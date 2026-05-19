#!/bin/bash

create_directory() {
	mkdir demo

}
create_directory

if ! create_directory; then
	echo"the demo is created"
	exit 1

fi

echo "this should not work because it is already work"
