#!/usr/bin/env bash

ls *-exemplo.maple |
	sort -n |
	tail -1 |
	sed -e 's/\([0-9]\+\)-exemplo.maple/\1/' -e 's/^0//' |
	while read n; do
		printf -v old "%02d-exemplo.maple\n" "$n"
		printf -v new "%02d-exemplo.maple\n" "$((n + 1))"
		cp $old $new
		echo $new: descrição | tee -a LOGS
	done

exit 0
