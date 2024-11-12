## Update apt-get and install unzip
sudo apt-get update
sudo apt-get install -y unzip

## Download IGV
wget https://data.broadinstitute.org/igv/projects/downloads/2.18/IGV_Linux_2.18.2_WithJava.zip

## Unzip IGV
unzip IGV_Linux_2.18.2_WithJava.zip

## Run IGV
./IGV_Linux_2.18.2/igv.sh