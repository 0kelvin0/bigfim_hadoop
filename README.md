# Big-FIM
Implementation of Big-FIM on a Hadoop Cluster for mining frequent itemsets using Map Reduce framework

Reference: https://github.com/eminaksehirli/BigFIM

# Installation Guide
On any linux VM:

sudo apt update

sudo apt-get install dirmngr

java -version (then install java 8 based on hint)

wget hadoop3.3

sudo tar -xvzf <downloaded hadoop>
 
sudo mkdir /usr/local/hadoop

# User Guide on this program 
Upload Input Data to HDFS:

> hdfs dfs -mkdir -p input

> hdfs dfs -put dataSet/sample input/

> hdfs dfs -ls input/

> hdfs dfs -rm input/sample

> hdfs dfs -cat output/ap2/part-r-00000
 
Use command as follow:

>./run.sh   // to compile

>hadoop jar bigFIM.jar bigFIM.BigFIMDriver datasetName, minsup(relative), input_file, output_file, datasize, childJavaOpts, nummappers, prefix_length.

e.g. hadoop jar bigFIM.jar bigFIM.BigFIMDriver sample 0.5 input output 6 2048 1 2

e.g. hadoop jar bigFIM.jar bigFIM.BigFIMDriver mushroom 0.1 input output 8124 2048 1 2

Output summary will be generated as XXX_ResultOut (e.g. BigFIM_mushroom_ResultOut)

Extract final output/raw data from HDFS :

e.g. hdfs dfs -cat output/fis/part-r-00000

e.g. hdfs dfs -cat output/ap2/part-r-00000
