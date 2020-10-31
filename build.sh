#!/bin/sh

if [ $1 = 'debug' ]
then
    BuildTY="Debug"
else
    BuildTY="Release"
fi

Build=$BuildTY'-build'
sudo rm -r $Build
mkdir $Build
cd ${Build}

if [ $1 = 'debug' ]
then
    cmake -DCMAKE_BUILD_TYPE=Debug ..
else
    cmake ..
fi

make -j4