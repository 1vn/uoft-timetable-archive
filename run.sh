#!/bin/bash
ACADEM_SESSION='201701'
SECTION='S,Y'

[ -d $ACADEM_SESSION ] || mkdir $ACADEM_SESSION
curl --silent "https://timetable.iit.artsci.utoronto.ca/api/courses?org=&code=&section=${SECTION}&studyyear=&daytime=&weekday=&prof=&breadth=&online=&waitlist=&available=&title=" > $ACADEM_SESSION/$(date +%s).json
