#!/bin/bash

WORKSPACE='seqeralabs/showcase'
OUTDIR=../datasets

## Overwrite dataset files if required
OVERWRITE=false

## Make output directory if it doesn't exist
if [ ! -d $OUTDIR ] 
then
    mkdir -p $OUTDIR
fi

## Get list of dataset ids in Workspace
IDS=( $( tw -o json datasets list --workspace=$WORKSPACE | jq -r '.datasetList[].id' ) )

## Get list of dataset names in Workspace
NAMES=( $( tw -o json datasets list --workspace=$WORKSPACE | jq -r '.datasetList[].name' ) )

## Loop through dataset ids and export to JSON
for i in "${!IDS[@]}"
do
    ID=${IDS[$i]}
    NAME=${NAMES[$i]}
    JSON="${OUTDIR}/${NAMES[$i]}.json"
    CSV="${OUTDIR}/${NAMES[$i]}.csv"
    if [[ ! -f $JSON || $OVERWRITE != false ]]
    then
        echo "[Workspace: '$WORKSPACE'] Downloading Dataset: '$NAME'"
        tw -o json datasets view --workspace=$WORKSPACE --id=$ID | jq 'del(.dataset["id", "deleted", "dateCreated", "lastUpdated"], .workspace)' > $JSON
        tw datasets download --workspace=$WORKSPACE --id=$ID | head -c -1 > $CSV
    fi
done
