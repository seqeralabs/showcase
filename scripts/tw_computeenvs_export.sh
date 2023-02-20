#!/bin/bash

WORKSPACE='seqeralabs/showcase'
OUTDIR=../compute-envs

## Overwrite compute environment JSON files if required
OVERWRITE=false

## Make output directory if it doesn't exist
if [ ! -d $OUTDIR ] 
then
    mkdir -p $OUTDIR
fi

## Get list of compute environment ids in Workspace
IDS=( $( tw -o json compute-envs list --workspace=$WORKSPACE | jq -r '.computeEnvs[].id' ) )

## Get list of compute environment names in Workspace
NAMES=( $( tw -o json compute-envs list --workspace=$WORKSPACE | jq -r '.computeEnvs[].name' ) )

## Loop through compute environment ids and export to JSON
for i in "${!IDS[@]}"
do
    ID=${IDS[$i]}
    NAME=${NAMES[$i]}
    JSON="${OUTDIR}/${NAMES[$i]}.json"
    if [[ ! -f $JSON || $OVERWRITE != false ]]
    then
        echo "[Workspace: '$WORKSPACE'] Downloading Compute Environment: '$NAME'"
        tw compute-envs export --workspace=$WORKSPACE --id=$ID | jq 'del(.["executionRole", "dragenQueue"])' > $JSON
    fi
done
