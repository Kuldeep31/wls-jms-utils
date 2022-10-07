#!/bin/bash
CURRENTPATH=$(cd $(dirname "$0") ; pwd)
cd ${CURRENTPATH}/../../bin
. ./setDomainEnv.sh
cd ${CURRENTPATH}


echo "Clear JMS Messages starting";date

java weblogic.WLST manageJmsQueues.py -loadProperties manageJmsQueues_TEST.properties
