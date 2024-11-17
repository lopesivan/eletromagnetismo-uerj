#!/usr/bin/env bash

ls *-doc.mw |
	sort -n |
	tail -1 |
	sed -e 's/\([0-9]\+\)-doc.mw/\1/' -e 's/^0//' |
	while read n; do
		printf -v doc "%02d-doc.mw\n" "$((n + 1))"
		cp default.mw $doc
		sed 's/size="10"/size="25"/' -i $doc
		sed 's/size="10"/size="25"/' -i $doc
		sed 's/size="12"/size="25"/' -i $doc
		sed 's/size="14"/size="25"/' -i $doc
		sed 's/size="16"/size="25"/' -i $doc
		sed 's/size="18"/size="25"/' -i $doc
		echo $doc: descrição | tee -a LOGS
	done

exit 0
