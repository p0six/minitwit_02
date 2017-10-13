#!/bin/bash

FLASK_APP=minitwit
export FLASK_APP
flask initdb && flask populatedb

sleep 5

MINITWIT_SETTINGS="`pwd`/sessions/session_store01.cfg"
export MINITWIT_SETTINGS
flask run -p 5000 &

MINITWIT_SETTINGS="`pwd`/sessions/session_store02.cfg"
export MINITWIT_SETTINGS
flask run -p 5001 &

MINITWIT_SETTINGS="`pwd`/sessions/session_store02.cfg"
export MINITWIT_SETTINGS
flask run -p 5002 &
