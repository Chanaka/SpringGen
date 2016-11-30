#!/bin/bash

mkdir -p gen
cd gen

for modelXML in ../model/*.xml
	do
		modelName=$(basename "$modelXML" .xml)

		java -classpath "../lib/*:." org.apache.xalan.xslt.Process -in $modelXML -xsl ../templates/Model.xsl -out ${modelName}.java
		java -classpath "../lib/*:." org.apache.xalan.xslt.Process -in $modelXML -xsl ../templates/ModelService.xsl -out ${modelName}Service.java
		java -classpath "../lib/*:." org.apache.xalan.xslt.Process -in $modelXML -xsl ../templates/ModelServiceImpl.xsl -out ${modelName}ServiceImpl.java
		java -classpath "../lib/*:." org.apache.xalan.xslt.Process -in $modelXML -xsl ../templates/ModelDao.xsl -out ${modelName}Dao.java
		java -classpath "../lib/*:." org.apache.xalan.xslt.Process -in $modelXML -xsl ../templates/ModelDaoImpl.xsl -out ${modelName}DaoImpl.java
done
