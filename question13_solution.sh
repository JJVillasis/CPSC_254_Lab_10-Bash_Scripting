#!/bin/bash
checkdir="./project"
checkfile="$checkdir/checksums.txt"

while read -r checksum1 checksum2 filename; do
    checksum="$checksum1 $checksum2"
    cksum "${filename//$'\r'/}" | {
        read realsum1 realsum2 name
        realsum="$realsum1 $realsum2"
        if [ "$realsum" != "$checksum" ]; then
            echo "Checksum wrong:   $filename"
        else
            echo "Checksum right:   $filename"
        fi
    }
done <"$checkfile" >&2