FROM dc1cp01.icp:8500/default/websphere-liberty:webProfile7-june2018.1

COPY server/server.xml /config/
COPY server/libs/db2*.jar /config/resources/db2/
COPY server/keystore/desktopKeys.jks /config/resources/security/

RUN installUtility install --acceptLicense defaultServer
ADD commercial-desktop-backend-ear/target/*.ear /config/dropins/
