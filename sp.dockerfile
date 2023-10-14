#FROM eclipse-temurin:17-jdk-jammy
#RUN mkdir -p /opt/shinyproxy/logs
#RUN wget https://www.shinyproxy.io/downloads/shinyproxy-3.0.2.jar -O /opt/shinyproxy/shinyproxy.jar
#COPY shinyproxy /opt/shinyproxy/
#WORKDIR /opt/shinyproxy/
#CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]

# The above runs as root as 0:0
# The below runs as shinyproxy with uid=1000(shinyproxy) gid=1000(shinyproxy) groups=1000(shinyproxy) 

FROM openanalytics/shinyproxy:3.0.2
COPY shinyproxy /opt/shinyproxy/