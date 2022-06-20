FROM tomcat
RUN apt-get update && apt-get install git
RUN git init
RUN git checkout -b vinod
RUN mkdir /usr/local/tomcat/webapps/ROOT
RUN echo " <html><body> HELLO WORLD </body></html> " > /usr/local/tomcat/webapps/ROOT/index.html 
CMD ["catalina.sh","run"]
