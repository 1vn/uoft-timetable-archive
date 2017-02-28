#!/bin/bash
ACADEM_SESSION='201701'
SECTION='S,Y'

[ -d $ACADEM_SESSION ] || mkdir $ACADEM_SESSION

git pull --rebase

$scrape_file_name='$(date +%s).json'

curl --silent "https://timetable.iit.artsci.utoronto.ca/api/courses?org=&code=&section=${SECTION}&studyyear=&daytime=&weekday=&prof=&breadth=&online=&waitlist=&available=&title=" > $ACADEM_SESSION/$scrape_file_name 

cp $ACADEM_SESSION/$scrape_file_name $ACADEM_SESSION/latest.json

git add "${ACADEM_SESSION}/"
git commit -m "Add new scrape"
git push origin master

