#!/bin/bash
#Copyright 2019 Adam Vincent

venvdir=datautomata_env

set -e

#Debian flavors
sudo apt-get install -y python3-venv
if [[ ! -d $venvdir && ! -f ${venvdir}/bin/activate ]]; then
	python3 -m venv datautomata_env
fi

#TODO: Fedora flavors


source datautomata_env/bin/activate
pip install --upgrade pip
pip install apache-beam[gcp] google-cloud-storage google-cloud-bigquery
