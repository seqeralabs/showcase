#!/bin/bash

WORKSPACE='seqeralabs/showcase'
JSON_DIR=../pipelines

## Overwrite pipeline in Workspace if required
OVERWRITE=false

## Loop through pipelines and import into Workspace
JSONS=($JSON_DIR/*.json)
for i in "${!JSONS[@]}"
do
    JSON=${JSONS[$i]}
    NAME=$(basename "$JSON" .json)

    ## Infer compute environment from pipeline name
    COMPUTE_ENV='seqera_aws_ireland_fusionv2_nvme'
    if [[ "$NAME" == *"dragen"* ]]
    then
        COMPUTE_ENV="seqera_aws_ireland_dragen"
    fi

    EXISTING_NAMES=( $( tw -o json pipelines list --workspace=$WORKSPACE | jq -r '.pipelines[].name' ) )
    if [[ " ${EXISTING_NAMES[*]} " =~ " ${NAME} " ]]
    then
        if [[ $OVERWRITE != false ]]
        then
            echo "[Workspace: '$WORKSPACE'] Deleting Pipeline: '$NAME'"
            tw pipelines delete --workspace=$WORKSPACE --name=$NAME
            echo "[Workspace: '$WORKSPACE'] Importing Pipeline: '$NAME'"
            tw pipelines import --workspace=$WORKSPACE --name=$NAME --compute-env=$COMPUTE_ENV $JSON
        fi
    else
        echo "[Workspace: '$WORKSPACE'] Importing Pipeline: '$NAME'"
        tw pipelines import --workspace=$WORKSPACE --name=$NAME --compute-env=$COMPUTE_ENV $JSON
    fi
done
