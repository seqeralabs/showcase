yum install jq -y
export NXF_VER=$(curl -s https://api.github.com/repos/nextflow-io/nextflow/tags | jq -r '.[].name' | head -n 1 | cut -c2-)