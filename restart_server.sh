#!/bin/bash

. venv/bin/activate
git pull
pids=$(pgrep python)
kill -9 $pids
python run_background_tasks.py &
python serve.py --prod --port 80 &