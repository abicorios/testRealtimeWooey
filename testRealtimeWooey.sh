#!/usr/bin/env bash
cd
git clone https://github.com/abicorios/slowPrint
if [ ! -d miniconda3 ]; then 
echo 'install miniconda3 x86_64 with default path, to ~/miniconda3 and confirm add path to .bashrc';
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
. ~/.bashrc 
fi
if ! conda env list | grep wooeytest; then
conda create -n wooeytest python=3;
fi
. activate wooeytest
if ! conda list | grep 'wooey '; then
pip install git+https://github.com/wooey/Wooey@master;
fi
if ! conda list | grep honcho; then
pip install honcho;
fi
if [ ! -d myproject ]; then 
wooify -p myproject;
fi
cd myproject
if ! ls | grep Procfile; then 
echo 'web:  python manage.py runserver
worker: celery -A myproject worker -c 1 --beat -l info
EOM' >> Procfile;
fi
./manage.py addscript ~/slowPrint/a.py
honcho start
