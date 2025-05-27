#!/usr/bin/env bash

ls *-exemplo.mpl |
    sort -n |
    tail -1 |
    sed -e 's/\([0-9]\+\)-exemplo.mpl/\1/' -e 's/^0//' |
    while read n; do
        printf -v old "%02d-exemplo.mpl\n" "$n"
        printf -v new "%02d-exemplo.mpl\n" "$((n + 1))"
        echo cp $old $new
        echo $new: clonado de $old >&2
    done

exit 0
