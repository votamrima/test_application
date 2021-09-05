FROM registry.access.redhat.com/ubi8/python-38

ENV APPROOT=/opt/app
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=mysql
ENV MYSQL_DB=words
ENV MYSQL_ROOT_PASSWORD=mysql
ENV MYSQL_HOST=mysql-db
ENV MYSQL_PORT=33306


CMD mkdir -pv ${APPROOT}
ADD dictionary ${APPROOT}
#ONBUILD ADD dictionary /opt/app/ 
#COPY requirements.txt /opt/app/

RUN pip install --upgrade pip && pip3 install -r /opt/app/requirements

EXPOSE 8090

USER root
CMD ["nohup", "python", "/opt/app/app.py", "&"]
#CMD ["nohup", "python", "/opt/app/app_env_vars.py", "&"]

