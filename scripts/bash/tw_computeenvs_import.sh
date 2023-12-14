#!/bin/bash

WORKSPACE='seqeralabs/showcase'
JSON_DIR=../compute-envs

## Overwrite compute environment in Workspace if required
OVERWRITE=false

## Loop through compute environments and import into Workspace
JSONS=($JSON_DIR/*.json)
for i in "${!JSONS[@]}"
do
    JSON=${JSONS[$i]}
    NAME=$(basename "$JSON" .json)

    ## Infer credentials from compute environment name
    CREDENTIALS=$(echo $NAME | cut -d "_" -f1,2 )"_credentials"
    if [[ "$NAME" == *"seqera_aws"* ]]
    then
        CREDENTIALS="seqera_aws_development_credentials"
    fi
    if [[ "$NAME" == *"dragen"* ]]
    then
        CREDENTIALS="seqera_aws_management_credentials"
    fi

    EXISTING_NAMES=( $( tw -o json compute-envs list --workspace=$WORKSPACE | jq -r '.computeEnvs[].name' ) )
    if [[ " ${EXISTING_NAMES[*]} " =~ " ${NAME} " ]]
    then
        if [[ $OVERWRITE != false ]]
        then
            echo "[Workspace: '$WORKSPACE'] Deleting Compute Environment: '$NAME'"
            tw compute-envs delete --workspace=$WORKSPACE --name=$NAME
            echo "[Workspace: '$WORKSPACE'] Importing Compute Environment: '$NAME'"
            tw compute-envs import --workspace=$WORKSPACE --name=$NAME --credentials=$CREDENTIALS --wait=AVAILABLE $JSON
        fi
    else
        echo "[Workspace: '$WORKSPACE'] Importing Compute Environment: '$NAME'"
        tw compute-envs import --workspace=$WORKSPACE --name=$NAME --credentials=$CREDENTIALS --wait=AVAILABLE $JSON
    fi
done
