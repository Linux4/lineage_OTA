#!/bin/bash

for YAML in docs/_data/devices/*.yml; do
	for MODEL in $(cat $YAML | shyaml get-value models | rev | cut -f1 -d ' ' | rev); do
		echo -e "---\nlayout: default\nmodel: $MODEL\n---\n{% include firmware.md %}" > docs/firmware/$MODEL.md
	done
done
