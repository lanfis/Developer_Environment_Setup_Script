#!/bin/bash
#PATH="/sbin:/bin:/usr/sbin:/usr/bin:${PATH}"

# The name + path to the executable program/daemon file...
NAME="supernode"
DAEMON="/usr/sbin/${NAME}"

# Modify $NAME to filter on 'grep -w [s]supernode' - faster than 'grep -v grep'...
GREPNAME=$(echo "[e]${NAME#e}")

# Enable some simple debug messages when running this script...
if [[ "${2}" == "debug" ]]; then
     echo "DEBUG: ${GREPNAME} ${2}"
fi

PIDFILE="/var/run/${NAME}.pid"
LOGFILE="/var/log/n2n-${NAME}.log"
STAMP=$(/bin/date +%T)

# Get the host/domain name to identify local configfile..
HOST=$(/bin/hostname)
FQDN=$(/bin/hostname -f)

# Initialise configfile variable to empty value...
CONFIGDIR="/etc/n2n"

# Initialise configfile variable to empty value...
CONFIGFILE="${NAME}.conf"

check_file()
{
    if [[ -f "${CONFIGFILE}" ]]; then
         # Get values from local configuration file...
         echo "--Found config file: ${CONFIGFILE} !"
         . ${CONFIGFILE}
    else
         echo "--ERROR: Missing config file ${CONFIGFILE} !"
         exit 1
    fi

    if [ -n "${N2N_ALLOW_COMMUNITY_FILE}" ]; then
         if [[ -f "${N2N_ALLOW_COMMUNITY_FILE}" ]]; then
              # Get values from local key file...
              echo "--Found allow community file: ${N2N_ALLOW_COMMUNITY_FILE} !"
         else
              echo "--WARN: Missing allow community file ${N2N_KEY_FILE} !"
         fi
    fi
}


# See if pid file exists and get pid number...
if [[ -f "${PIDFILE}" ]]; then
     CURPID=$(cat ${PIDFILE})
fi

# Quit if we can't find application...
test -f ${DAEMON} || exit 0

set -e

# Set any value to enable this script...
# N2N_RUN=1
#
# test -n "${N2N_RUN}" || exit 0

# Optionaly change into n2n config directory...
if [[ -d "${CONFIGDIR}" ]]; then
     cd ${CONFIGDIR}
fi


# =========================================================

# Should not need to change much below here...

# ==== see how we were called  + act accordingly ==========
case "${1}" in
     start)
         echo "--Checking files ...";
         check_file
         # echo " ${NAME} ${1} process is ${0} on pid: ${$})..."
         echo "--${STAMP} start n2n supernode /etc/rc.d/init.d/${NAME}" > ${LOGFILE}

         if [[ -n "${CURPID}" ]]; then
             echo "--A PID:${CURPID} already exists for ${0}:"
             echo "--To re-start with current config settings, run '$0 stop' then '$0 start' ..."
         else
             if [ -d /var/lock/subsys ] ; then
                 touch /var/lock/subsys/${NAME};
             fi

             # =====================================================
             # If using third-part tools to set tun device..
             # tunctl -t ${N2N_TUN_IF}

             # All variables read from ${CONFIGFILE}...
             # Use configfile ${N2N_FORWARD}   = '-r' switch to enable packet forwarding/routing
             # Use configfile ${DAEMONISE} = '-f' switch to daemonise in background....
             #
             # Uncomment to display all the variable source values...
             # echo "DEBUG: ${DAEMON} ${N2N_FORWARD} ${N2N_DAEMONISE}\
             #    -d ${N2N_TUN_IF} -c ${N2N_COMMUNITY} -k ${N2N_KEY} -u ${N2N_UID} -g ${N2N_GID} \
             #    -a ${N2N_IP} -s ${N2N_NETMASK} -p ${N2N_UDP} -l ${N2N_SUPERNODE}:${N2N_PORT} ${N2N_OPTIONS}"
             # If variable value not empty then add command-line switch to variable...


             if [[ -n "${N2N_PORT}" ]]; then N2N_PORT="-l ${N2N_PORT}"; fi
             if [[ -n "${N2N_ALLOW_COMMUNITY_FILE}" ]]; then N2N_ALLOW_COMMUNITY_FILE="-c ${N2N_ALLOW_COMMUNITY_FILE}"; fi

             if [[ "${2}" == "debug" ]]; then
                 echo "--DEBUG: display values for ${DAEMON} from configfile:"
                 echo "--${N2N_PORT} ${N2N_ALLOW_COMMUNITY_FILE} ${N2N_OPTIONS}"
             fi

             # Execute the command + switches + values sources from config file...
             ${DAEMON} ${N2N_PORT} ${N2N_ALLOW_COMMUNITY_FILE} ${N2N_OPTIONS} &

             # ====================================================
             echo "--NOTICE: Starting:${NAME}"
             rm -f ${PIDFILE}
             touch ${PIDFILE}

             for PID in $(ps ax | grep -w "${GREPNAME}" | grep -v "(restart|stop|start)" | awk '{ print $1 }')
             do
                 echo "--Setting PID: ${PID}"
                 echo ${PID} >> ${PIDFILE}
             done
         fi
        ;;
     stop)
             # echo " DEBUG: Searching for at least one live process id..."
             PID=$(ps -ef | grep ${DAEMON} | awk '{ print $2 }' | sed -n '1p')
             #PID=$(ps ax | grep -w "${GREPNAME}" | grep -v "(restart|stop|start)" | awk '{ print $1 }')

             if [[ "${2}" == "debug" ]]; then
                 echo "--${NAME} ${1} process is ${0} on pid: ${$}) for ${PID}..."
             fi

             echo "--${STAMP} stop /etc/rc.d/init.d/${NAME}" >> ${LOGFILE}

             # echo "  NOTICE: Kill name:${NAME} pid:${pid} before stopping..."
             # kill -9 $(cat /var/run/${NAME}_pid) && rm /var/run/${NAME}_pid

             # If a pid value found in file or in process id, then kill it...
             if [[ -n "${PID}" ]]; then
                 echo "--Stopping; ${NAME} pid:${PID}..."
                 # kill -9 $(cat /var/run/${NAME}.pid) && rm /var/run/${NAME}.pid
                 kill ${PID}
                 sleep 2s
                 rm -f ${PIDFILE}
             else
                 # Else assume stale pid...
                 if [[ "${2}" == "debug" ]]; then
                     echo "--NOTICE: No current active process ${PID}..."
                 fi

                 if [[ -f "${PIDFILE}" ]]; then
                     echo "--removing stale pidfile..."
                     rm -f ${PIDFILE}
                 fi
             fi

             # Indiscriminate pid killer...
             # for PID in $(ps ax | grep -w ${NAME} | grep -v grep | awk '{ print $1 }')
             # do
            #    echo " Killing currently active ${NAME} pid(s): ${PID}"
            #    # kill -HUP $PID
            #    kill ${PID}
             # done

             if [[ -f /var/lock/subsys/${NAME} ]]; then
                 echo "--Removing stale lock file..."
                 rm -f /var/lock/subsys/${NAME}
             fi

             if [[ -f "${PIDFILE}" ]]; then
                 echo "--Removing stale pid file..."
                 rm -f /var/lock/subsys/${NAME}
             fi
        ;;
     restart)
             echo "--* Re-start ${NAME}..."
             ${0} stop ${2}

             # Not a race....
             sleep 4s

             ${0} start ${2}
        ;;
     status)
             # status ${NAME}
             PID=$(ps -ef | grep ${DAEMON} | awk '{ print $2 }' | sed -n '1p')
             #PID=$(ps ax | grep -w "${GREPNAME}" | grep -v "status" | awk '{ print $1 }')

             if [[ "${2}" == "debug" ]]; then
                 echo "--This ${NAME} ${1} init query is ${0} running on pid: ${$})..."
             fi

             # If at least one active session, look for more...
             if [[ -n "${PID}" ]]; then
                 for PID in $(ps ax | grep -w "${GREPNAME}" | grep -v "status" | awk '{ print $1 }')
                 do
                     if [[ -n "${PID}" ]]; then
                        echo "--* Found current active ${GREPNAME} pid(s): ${PID}"
                     else
                        echo "--* No active session found for ${0}"
                     fi
                 done
             else
                echo "--* No active session(s) found for ${0}"
             fi
        ;;
         *)
            echo "--Usage: ${0} {start|stop|status|restart|any debug}" >&2
            exit 1
        ;;
     esac
exit 0
