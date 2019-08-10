FROM jboss/wildfly
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin
copy /SpringBootHelloWordExternalContiner/target/SpringBootHelloWordExternalContiner.war /opt/jboss/wildfly/standalone/deployments/
copy /HelloEJB3Project/target/HelloEJB3Project.jar /opt/jboss/wildfly/standalone/deployments/
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0"]