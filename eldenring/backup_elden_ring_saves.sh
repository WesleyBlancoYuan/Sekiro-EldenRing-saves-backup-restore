#!/bin/bash
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
#
# Recommended to run with gitbash, or "Ubuntu for Windows", or any
# equivalent Linux bash in Windows
# all windows path are annotated with "/", not Windows classical "\"
# to be compatible with (future possible) Linux path

echo 
echo '=================================================='
echo '=================================================='
echo '=====             Elden Ring(tm)             ====='
echo '=====         Backup your save file          ====='
echo '=====                                        ====='
echo '=====                  by                    ====='
echo '=====                                        ====='
echo '=====      github.com/WesleyBlancoYuan       ====='
echo '=================================================='
echo '=================================================='
echo 

# adapt as your needs
DEST=/e/games/elden_ring_saves
# $APPDATA points to "/c/Users/<your-username>/AppData/Roaming"
# always the same
SOURCE=$APPDATA/EldenRing/76561198090276100

# read new name to identify. Unicode characters are allowed, for example CJK
read -p "Backup save file to $DEST with this name: " FILENAME
# it is not allowed to "copy and rename" when DEST is not same dir(stupid), so we have
# to copy and rename(mv). Use "cp -f" to overwrite
cp -v -f "$SOURCE/ER0000.sl2" $DEST
cd $DEST
mv ER0000.sl2 $FILENAME.sl2
echo Latest save copied to "$DEST/$FILENAME.sl2"
sleep 5 # wait 5 sec and close
