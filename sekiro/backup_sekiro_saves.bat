REM    Copyright (C) 2022  WesleyBlancoYuan
REM
REM    This program is free software: you can redistribute it and/or modify
REM    it under the terms of the GNU General Public License as published by
REM    the Free Software Foundation, either version 3 of the License, or
REM    (at your option) any later version.
REM
REM    This program is distributed in the hope that it will be useful,
REM    but WITHOUT ANY WARRANTY; without even the implied warranty of
REM    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM    GNU General Public License for more details.
REM
REM    You should have received a copy of the GNU General Public License
REM    along with this program.  If not, see <http://www.gnu.org/licenses/>.
@echo off
echo:
echo ==================================================
echo ==================================================
echo =====     Sekiro: Shadow die twice(tm)       =====
echo =====         Backup your save file          =====
echo =====                                        =====
echo =====                  by                    =====
echo =====                                        =====
echo =====      github.com/WesleyBlancoYuan       =====
echo ==================================================
echo ==================================================
echo:

REM adapt as your needs
set DEST=e:\games\sekiro_saves
REM SOURCE is always the same
set SOURCE=%APPDATA%\Sekiro\76561198090276100

set /p NAME="Backup save file to %DEST% with this name: "
copy /-Y "%SOURCE%\S0000.sl2" "%DEST%\%NAME%.sl2"
echo Latest save copied to "%DEST%\%NAME%.sl2"
TIMEOUT /T 5 
exit
