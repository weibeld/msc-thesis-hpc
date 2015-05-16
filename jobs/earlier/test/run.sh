#!/bin/bash

echo "\$#: $#"
echo "\$@:"
a=("$@")
for i in "${a[@]}"; do echo $i; done

