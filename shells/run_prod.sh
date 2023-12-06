#!/bin/bash

sudo systemctl start mysql.service

cp env_pod .env
python3 main.py