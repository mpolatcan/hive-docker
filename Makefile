.PHONY: publish-hive
publish-hive:
	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-3.1.0 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.1.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-3.1.0 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.1.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.3 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.0.3" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-3.0.3 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.0.3" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.2 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.0.2" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-3.0.2 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="3.0.2" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.1 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.9.1" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-2.9.1 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.9.1" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.0 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.9.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-2.9.0 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.9.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-2.8.4 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.8.4" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-2.8.4 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.8.4" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-2.7.6 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.7.6" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-2.7.6 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.7.6" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:ubuntu-3.0.0-hadoop-2.6.5 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.6.5" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-3.0.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:ubuntu-3.0.0-hadoop-2.6.5

	sudo docker build -q -t mpolatcan/hive:alpine-3.0.0-hadoop-2.6.5 --build-arg HIVE_VERSION="3.0.0" --build-arg HADOOP_VERSION="2.6.5" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-3.0.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:alpine-3.0.0-hadoop-2.6.5
# ----------------------------------------------------------------------------------------------------------------------

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-3.1.0 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.1.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-3.1.0 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.1.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.3 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.0.3" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-3.0.3 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.0.3" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.2 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.0.2" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-3.0.2 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="3.0.2" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.1 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.9.1" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-2.9.1 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.9.1" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.0 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.9.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-2.9.0 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.9.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-2.8.4 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.8.4" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-2.8.4 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.8.4" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-2.7.6 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.7.6" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-2.7.6 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.7.6" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:ubuntu-2.3.3-hadoop-2.6.5 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.6.5" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-2.3.3-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:ubuntu-2.3.3-hadoop-2.6.5

	sudo docker build -q -t mpolatcan/hive:alpine-2.3.3-hadoop-2.6.5 --build-arg HIVE_VERSION="2.3.3" --build-arg HADOOP_VERSION="2.6.5" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-2.3.3-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:alpine-2.3.3-hadoop-2.6.5
# ----------------------------------------------------------------------------------------------------------------------

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-3.1.0 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.1.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-3.1.0 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.1.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-3.1.0
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.3 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.0.3" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-3.0.3 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.0.3" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-3.0.3
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.2 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.0.2" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-3.0.2 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="3.0.2" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-3.0.2
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.1 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.9.1" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-2.9.1 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.9.1" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-2.9.1
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.0 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.9.0" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-2.9.0 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.9.0" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-2.9.0
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-2.8.4 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.8.4" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-2.8.4 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.8.4" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-2.8.4
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-2.7.6 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.7.6" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-2.7.6 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.7.6" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-2.7.6
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/hive:ubuntu-1.2.2-hadoop-2.6.5 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.6.5" ./ubuntu/hive/
	sudo docker push mpolatcan/hive:ubuntu-1.2.2-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:ubuntu-1.2.2-hadoop-2.6.5

	sudo docker build -q -t mpolatcan/hive:alpine-1.2.2-hadoop-2.6.5 --build-arg HIVE_VERSION="1.2.2" --build-arg HADOOP_VERSION="2.6.5" ./alpine/hive/
	sudo docker push mpolatcan/hive:alpine-1.2.2-hadoop-2.6.5
	sudo docker rmi mpolatcan/hive:alpine-1.2.2-hadoop-2.6.5
