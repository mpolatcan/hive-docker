.PHONY: publish-hive
publish-hive:
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=3.0.0 hadoop_version=2.6.5
	$(MAKE) publish-hive-helper dist=alpine hive_version=3.0.0 hadoop_version=2.6.5
# ----------------------------------------------------------------------------------------------------------------------
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=2.3.3 hadoop_version=2.6.5
	$(MAKE) publish-hive-helper dist=alpine hive_version=2.3.3 hadoop_version=2.6.5
# ----------------------------------------------------------------------------------------------------------------------
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=3.1.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=3.0.3
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=3.0.2
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=2.9.1
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=2.9.0
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=2.8.4
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=2.7.6
	$(MAKE) publish-hive-helper dist=ubuntu hive_version=1.2.2 hadoop_version=2.6.5
	$(MAKE) publish-hive-helper dist=alpine hive_version=1.2.2 hadoop_version=2.6.5

.PHONY: publish-hive-helper
publish-hive-helper:
	sudo docker build -q -t mpolatcan/hive:$(dist)-$(hive_version)-hadoop-$(hadoop_version) --build-arg HIVE_VERSION=$(hive_version) --build-arg HADOOP_VERSION=$(hadoop_version) ./$(dist)/
	sudo docker push mpolatcan/hive:$(dist)-$(hive_version)-hadoop-$(hadoop_version)
	sudo docker rmi $$(sudo docker images -q)