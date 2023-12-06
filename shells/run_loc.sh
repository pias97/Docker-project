#!/bin/bash

sudo systemctl start mysql.service

cp env_loc .env
python3 main.py