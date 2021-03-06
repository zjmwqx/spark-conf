#!/usr/bin/env bash
export JAVA_HOME=/usr

# This file is sourced when running various Spark programs.
# Copy it as spark-env.sh and edit that to configure Spark for your site.

# Options read when launching programs locally with 
# ./bin/run-example or ./bin/spark-submit
# - HADOOP_CONF_DIR, to point Spark towards Hadoop configuration files
export HADOOP_CONF_DIR=./conf
export SPARK_JAR=hdfs://10.21.139.21:8020/jar/spark-assembly-1.1.0-hadoop2.2.0.jar

export SPARK_YARN_USER_ENV="spark.yarn.driver.memoryOverhead=16384,spark.yarn.executor.memoryOverhead=16384"
export JAVA_OPTS+="-Xms8192m -Xmx16384m -verbose:gc -XX:+UseCompressedOops -XX:+PrintGCDetails -XX:+PrintGCTimeStamps"

export SPARK_MEM=10g
# - SPARK_LOCAL_IP, to set the IP address Spark binds to on this node
# - SPARK_PUBLIC_DNS, to set the public dns name of the driver program
# - SPARK_CLASSPATH, default classpath entries to append

# Options read by executors and drivers running inside the cluster
# - SPARK_LOCAL_IP, to set the IP address Spark binds to on this node
# - SPARK_PUBLIC_DNS, to set the public DNS name of the driver program
# - SPARK_CLASSPATH, default classpath entries to append
# - SPARK_LOCAL_DIRS, storage directories to use on this node for shuffle and RDD data
# - MESOS_NATIVE_LIBRARY, to point to your libmesos.so if you use Mesos


# Options read in YARN client mode
# - HADOOP_CONF_DIR, to point Spark towards Hadoop configuration files
# - SPARK_EXECUTOR_INSTANCES, Number of workers to start (Default: 2)
export SPARK_EXECUTOR_CORES=16
# - SPARK_EXECUTOR_MEMORY, Memory per Worker (e.g. 1000M, 2G) (Default: 1G)
# - SPARK_DRIVER_MEMORY, Memory for Master (e.g. 1000M, 2G) (Default: 512 Mb)
# - SPARK_YARN_APP_NAME, The name of your application (Default: Spark)
# - SPARK_YARN_QUEUE, The hadoop queue to use for allocation requests (Default: ‘default’)
# - SPARK_YARN_DIST_FILES, Comma separated list of files to be distributed with the job.
# - SPARK_YARN_DIST_ARCHIVES, Comma separated list of archives to be distributed with the job.

#export SPARK_EXECUTOR_CORES=16
export SPARK_EXECUTOR_MEMORY=20g
export SPARK_DRIVER_MEMORY=16g



# Options for the daemons used in the standalone deploy mode:
# - SPARK_MASTER_IP, to bind the master to a different IP address or hostname
#set SPARK_MASTER_IP = 10.21.139.21
# - SPARK_MASTER_PORT / SPARK_MASTER_WEBUI_PORT, to use non-default ports for the master
#export SPARK_MASTER_PORT=7077
#export SPARK_MASTER_WEBUI_PORT=8080
# - SPARK_MASTER_OPTS, to set config properties only for the master (e.g. "-Dx=y")
# - SPARK_WORKER_CORES, to set the number of cores to use on this machine
# - SPARK_WORKER_MEMORY, to set how much total memory workers have to give executors (e.g. 1000m, 2g)
# - SPARK_WORKER_PORT / SPARK_WORKER_WEBUI_PORT, to use non-default ports for the worker
# - SPARK_WORKER_INSTANCES, to set the number of worker processes per node
# - SPARK_WORKER_DIR, to set the working directory of worker processes
# - SPARK_WORKER_OPTS, to set config properties only for the worker (e.g. "-Dx=y")
# - SPARK_HISTORY_OPTS, to set config properties only for the history server (e.g. "-Dx=y")
# - SPARK_DAEMON_JAVA_OPTS, to set config properties for all daemons (e.g. "-Dx=y")
# - SPARK_PUBLIC_DNS, to set the public dns name of the master or workers
#export SPARK_WORKER_DIR=/opt/spark-1.0.1-bin-hadoop2
