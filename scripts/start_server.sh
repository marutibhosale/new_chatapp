#!/bin/bash

sudo systemctl start gunicorn
sudo service nginx restart	
