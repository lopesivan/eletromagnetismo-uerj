#!/usr/bin/env bash

LD_LIBRARY_PATH=/opt/maple2021/bin.X86_64_LINUX \
	MAPLE=/opt/maple2021 \
	javac -cp "/opt/maple2021/java/externalcall.jar:/opt/maple2021/java/Maple.jar" Example.java

LD_LIBRARY_PATH=/opt/maple2021/bin.X86_64_LINUX \
	MAPLE=/opt/maple2021 \
	java \
	-cp ".:/opt/maple2021/java/externalcall.jar:/opt/maple2021/java/Maple.jar" \
	Example

exit 0
