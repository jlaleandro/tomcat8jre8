# Use a imagem base do Tomcat
FROM tomcat:8.5.70-jre8

# Defina variáveis de ambiente para o Tomcat
# ENV TOMCAT_USERNAME 
# ENV TOMCAT_PASSWORD 

# Copie os aplicativos web para o diretório webapps do Tomcat
COPY ./tomcat/webapps /usr/local/tomcat/webapps

# Copie os logs para o diretório logs do Tomcat
COPY ./tomcat/logs /usr/local/tomcat/logs

# Copie os aplicativos web para o diretório webapps do Tomcat
COPY ./tomcat/conf /usr/local/tomcat/conf

# Exponha as portas necessárias
EXPOSE 8080
EXPOSE 8443

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]
