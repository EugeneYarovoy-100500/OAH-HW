#!/bin/bash
echo "------------------------------------------------------------"
echo "Install Flask...."
echo "------------------------------------------------------------"
echo ""
pip3 install Flask
echo "------------------------------------------------------------"
echo "Install gunicorn"
echo "------------------------------------------------------------"
echo ""
pip3 install gunicorn
GUNICORN_CMD_ARGS="--workers=3 --access-logfile -" gunicorn -b 0.0.0.0:80 app
gunicorn -b 0.0.0.0:80 app 
