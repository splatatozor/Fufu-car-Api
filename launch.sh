#!/bin/sh

ps auxw | grep flask | grep -v grep > /dev/null

if [ $? != 0 ]
then
        export FLASK_APP=api.py
        flask run --host=0.0.0.0
fi