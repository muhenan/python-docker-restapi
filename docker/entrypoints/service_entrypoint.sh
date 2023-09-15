#!/bin/bash

# This line indicates that the script should be interpreted using the Bash shell. 
# It's essentially telling the operating system to run the script in a Bash shell environment.

exec uvicorn python-docker-restapi.main:app --host 0.0.0.0 --port 8080 --reload
