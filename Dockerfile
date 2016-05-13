FROM tomcat:latest

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV JAVA_OPTS="-server -Xms704m -Xmx1024m -XX:MaxPermSize=256m"

WORKDIR $CATALINA_HOME

# download openam nightly build war
RUN curl http://download.forgerock.org/downloads/openam/openam_link.js | \
   grep -o "http://.*\.war" | \
   xargs curl -o webapps/openam.war


CMD ["catalina.sh", "run"]