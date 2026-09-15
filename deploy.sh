#!/bin/bash
cd ~/LORD-WB-TAXI
git pull
screen -X -S lordbot quit
sleep 2
screen -dmS lordbot bash -c "cd ~/LORD-WB-TAXI && source venv/bin/activate && export \$(cat .env | xargs) && python -m bot.main"
