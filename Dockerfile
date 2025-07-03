# Use official Tomcat 9 base image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file (exported from Eclipse/IntelliJ) to Tomcat
COPY digidine.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat when container runs
CMD ["catalina.sh", "run"]