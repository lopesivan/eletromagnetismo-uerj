#!/usr/bin/env bash

ls *-doc.mw |
	sort -n |
	tail -1 |
	sed -e 's/\([0-9]\+\)-doc.mw/\1/' -e 's/^0//' |
	while read n; do
		printf -v old "%02d-doc.mw\n" "$n"
		printf -v new "%02d-doc.mw\n" "$((n + 1))"
		cp $old $new
		echo $new: clonado de $old | tee -a LOGS
	done

exit 0
