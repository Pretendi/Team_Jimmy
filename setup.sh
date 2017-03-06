#!bin/bash

mkdir data
cd data

ALLDATA=${1:-false}
TITLA_START=2016

# Download data from the old YYZ station
if [ $ALLDATA = true ]; then
    TITLA_START=2013
    for year in `seq 1953 2013`; do
#        for month in `seq 1 12`; do
 #           for day in `seq 1 31`; do
                echo "Downloading TORONTO LESTER B. PEARSON INTL A, ${year}/${month}/${day}"
                wget --content-disposition "http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=5097&Year=${year}&Month=1&Day=1&timeframe=2&submit= Download+Data"
 #           done
 #       done
    done
fi

# Download data from the new YYZ station
for year in `seq $TITLA_START 2017`; do
  #  for month in `seq 1 12`; do
   #     for day in `seq 1 31`; do
            echo "Downloading TORONTO INTL A, ${year}/${month}/${day}"
            wget --content-disposition "http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=51459&Year=${year}&Month=1&Day=1&timeframe=2&submit= Download+Data"
#    done
done

