#!/bin/sh

# Copyright (C) 2022  WesleyBlancoYuan
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Recommended to run with gitbash, or "Ubuntu for Windows", or any
# equivalent Linux bash in Windows
# all windows path are annotated with "/", not Windows classical "\"
# to be compatible with (future possible) Linux path

echo 
echo '=================================================='
echo '=================================================='
echo '=====     Sekiro: Shadow die twice(tm)       ====='
echo '=====         Restore your save file         ====='
echo '=====                                        ====='
echo '=====                  by                    ====='
echo '=====                                        ====='
echo '=====      github.com/WesleyBlancoYuan       ====='
echo '=================================================='
echo '=================================================='
echo 

# adapt as your needs
SOURCE=/e/games/sekiro_saves
DEST=$APPDATA/Sekiro/76561198090276100
# declare a table, for bash v4.0 above
declare -A saves
i=0
for file in $SOURCE/*.sl2 
do
    let i++
    saves[$i]=$file
    echo "[$i] ${file##*/}"
done

read -p "Which save file to restore? " INDEX
TORESTORE=${saves[$INDEX]}
echo File to restore: $TORESTORE
# pattern to get filename
FILENAME="$(echo ${TORESTORE##*/})"

# it is not allowed to "copy and rename" when dest is not same dir(stupid), so we have
# to copy and rename(mv). Use "cp -f" to overwrite
cp -v $TORESTORE $DEST
cd $DEST
mv -v $FILENAME S0000.sl2 # mv overwrites without prompt
# now source file is renamed, we must copy to get a bak; note now cp can work to rename! stupid
cp -f -v S0000.sl2 S0000.sl2.bak
echo Latest save file restored with $TORESTORE
sleep 5 # wait 5 sec and close
