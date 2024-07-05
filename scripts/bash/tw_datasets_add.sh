#!/bin/bash

WORKSPACE='seqeralabs/showcase'
JSON_DIR=../datasets

## Overwrite dataset files if required
OVERWRITE=false

## Loop through dataset ids and add to Workspace
JSONS=($JSON_DIR/*.json)
for i in "${!JSONS[@]}"
do
    JSON=${JSONS[$i]}
    CSV=${JSON%.json}.csv
    DESCRIPTION=$( cat $JSON | jq -r '.dataset.description' )
    NAME=$(basename "$JSON" .json)

    EXISTING_NAMES=( $( tw -o json datasets list --workspace=$WORKSPACE | jq -r '.datasetList[].name' ) )
    if [[ " ${EXISTING_NAMES[*]} " =~ " ${NAME} " ]]
    then
        if [[ $OVERWRITE != false ]]
        then
            echo "[Workspace: '$WORKSPACE'] Deleting Dataset: '$NAME'"
            tw datasets delete --workspace=$WORKSPACE --name=$NAME
            echo "[Workspace: '$WORKSPACE'] Importing Dataset: '$NAME'"
            tw datasets add --workspace=$WORKSPACE --name=$NAME --description="$DESCRIPTION" --header $CSV
        fi
    else
        echo "[Workspace: '$WORKSPACE'] Importing Dataset: '$NAME'"
        tw datasets add --workspace=$WORKSPACE --name=$NAME --description="$DESCRIPTION" --header $CSV
    fi
done
