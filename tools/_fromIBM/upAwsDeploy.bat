set currentDir=%~dp0
set TARGET=%currentDir%\fm-ucd-aws-deploy-plugin-v1.0.zip

cd .\fm-ucd-aws-deploy-plugin\bin
xcopy com %currentDir%\fm-ucd-aws-deploy-plugin\classes\com /hievry
         
cd .\fm-ucd-aws-deploy-plugin\src\main\java
xcopy com %currentDir%\fm-ucd-aws-deploy-plugin\classes\com /hievry

cd %currentDir%\fm-ucd-aws-deploy-plugin
jar -cf %TARGET% *.groovy
jar -uf %TARGET% *.xml
jar -uf %TARGET% lib/*
jar -uf %TARGET% classes/*

cd %currentDir%\fm-ucd-aws-deploy-plugin\scripts
jar -uf %TARGET% *.groovy 

cd %currentDir%

 

