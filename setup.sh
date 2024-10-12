#! /bin/bash

echo '#################################################'
echo '#################################################'
echo '     JDRTS Wiki Setup Script - VERSION 1.0'
echo ''
echo 'Before using this script, you need to have Docker'
echo 'installed and running, plus your disk mounted for'
echo 'zim storage. eg. /mnt/hdd2/data.'
echo '#################################################'
echo '#################################################'
echo ''
echo ''

read -p "Path to zim file storage disk: " zim_data

echo ''
echo ''
echo 'This is the directory you want to use for zim: ' $zim_data

sleep 2

read -p "Path to your docker compose folder: " docker_folder

echo ''
echo ''
echo 'This is the directory you used for docker: ' $docker_folder

sleep 2

read -p "Do you want to download the full Wikipedia zim: " yes_full_wiki

mkdir $zim_data

cd $zim_data

echo 'ENSURE YOU HAVE AT LEAST 100GB'

df -h

sleep 5

if [$yes_full_wiki == 'yes']; then

    echo 'downloading full wikipedia archive'
    sleep 2
    wget https://download.kiwix.org/zim/wikipedia/wikipedia_en_all_maxi_2024-01.zim

fi

sleep 5


