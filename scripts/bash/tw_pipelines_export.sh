#!/bin/bash

WORKSPACE='seqeralabs/showcase'
OUTDIR=/Users/eshajoshi/Development/update_showcase/ej-showcase/pipelines

## Overwrite pipeline JSON files if required
OVERWRITE=false

## Make output directory if it doesn't exist
if [ ! -d $OUTDIR ] 
then
    mkdir -p $OUTDIR
fi

## Get list of pipeline ids in Workspace
IDS=( $( tw -o json pipelines list --workspace=$WORKSPACE | jq -r '.pipelines[].pipelineId' ) )

## Get list of pipeline names in Workspace
NAMES=( $( tw -o json pipelines list --workspace=$WORKSPACE | jq -r '.pipelines[].name' ) )

## Loop through pipeline ids and export to JSON
for i in "${!IDS[@]}"
do
    ID=${IDS[$i]}
    NAME=${NAMES[$i]}
    JSON="${OUTDIR}/${NAMES[$i]}.json"
    if [[ ! -f $JSON || $OVERWRITE != false ]]
    then
        echo "[Workspace: '$WORKSPACE'] Downloading Pipeline: '$NAME'"
        tw pipelines export --workspace=$WORKSPACE --id=$ID | jq 'del(.launch["id", "computeEnvId", "workDir", "dateCreated"])' > $JSON
    fi
done
