#!/usr/bin/env bash
cd $1
if [[ ! -d .venv ]]; then
	python3.9 -m venv .venv
fi
source .venv/bin/activate
pip install -U pip
pip install -r requirements.txt
pip install -r ../requirements.txt
source make.sh
ipython kernel install --name $1 --user
cd ..
