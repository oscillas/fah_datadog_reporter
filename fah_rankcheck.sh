#!/bin/bash

STATS=`curl -s 'https://stats.foldingathome.org/api/team/{REPLACE_TEAM_NUM}' | jq -r '.rank,.total_teams,.credit,.wus'`

RANK=`/bin/echo ${STATS} | /usr/bin/awk '{printf "%d", $1}'`
TOTAL_TEAMS=`/bin/echo ${STATS} | /usr/bin/awk '{printf "%d" ,$2}'`
CREDITS=`/bin/echo ${STATS} | /usr/bin/awk '{printf "%d", $3}'`
WUS=`/bin/echo ${STATS} | /usr/bin/awk '{printf "%d", $4}'`

echo "RANK: $RANK"
echo "TOTAL_TEAMS: $TOTAL_TEAMS"
echo "CREDITS: $CREDITS"
echo "WUS: $WUS"

if [ $RANK -gt 0 ]
then

	echo -n "fah.rank:${RANK}|g" | nc -4u -w1 localhost 8125 
	echo -n "fah.total_teams:${TOTAL_TEAMS}|g" | nc -4u -w1 localhost 8125
	echo -n "fah.credits:${CREDITS}|g" | nc -4u -w1 localhost 8125
	echo -n "fah.wus:${WUS}|g" | nc -4u -w1 localhost 8125

fi
