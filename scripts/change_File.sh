#!/bin/bash
export dbname=postgres
export dbpassword=password123
export dbuser=postgres
export dbhost=database-1.cbxgvybefbx8.ap-south-1.rds.amazonaws.com
sudo systemctl daemon-reload
sudo systemctl enable gunicorn



test
