# UofT A&S Timetable Archive
An archive of course timetable data for courses offered by the Faculty of Arts &amp; Science at University of Toronto. Data is scraped daily (or as regularly as possible) from https://timetable.iit.artsci.utoronto.ca

## Setting up your own instance
1. Clone the repository
2. Edit [run.sh](run.sh) as required:
  * `SECTIONS` is a comma-separated string of one or more of `F`, `S`, or `Y` that sets the Fall/Winter semester filter for data scraped.
  * `ACADEM_SESSION` is a string that sets the output directory for the data scraped. It's a good idea to use the "YYYYMM" _academic session_ format (eg., 201609 for "2016 Fall" or 201701 for "2017 Winter").
3. Hook it up to a scheduler like cron or run it manually as needed
4. The scraped data will appear in the output directory as `<epoch-time>.json` files, where `<epoch-time>` is the time it was scraped

## Notes on data contained in freeatnet/uoft-timetable-archive
* The source of the data is polled daily at 9.14am
* The data may or may not be updated daily by the source
