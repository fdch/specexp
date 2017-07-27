#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

"$DIR"/src/bin/Pd-0.48.0.app/Contents/Resources/bin/pd -noprefs -r 48000 -noadc -audiobuf 50 -blocksize 128 -midiindev 1  -open "../../../../../_main.pd"
 
