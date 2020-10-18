mkdir -p classes
rm -Rf classes/*
javac -classpath $($HADOOP_HOME/bin/hadoop classpath) -d classes ./src/bigFIM/*.java
jar -cvf bigFIM.jar -C classes .