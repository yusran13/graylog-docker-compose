#!/bin/bash

mkdir /home/yusran/data/docker/graylog_data/
mkdir /home/yusran/data/docker/graylog_mongo_data/
mkdir /home/yusran/data/docker/graylog_os_data/

docker volume create --driver local --opt type=none --opt device=/home/yusran/data/docker/graylog_mongo_data --opt o=bind graylog_mongo_data
docker volume create --driver local --opt type=none --opt device=/home/yusran/data/docker/graylog_os_data --opt o=bind graylog_os_data
docker volume create --driver local --opt type=none --opt device=/home/yusran/data/docker/graylog_data --opt o=bind graylog_data
