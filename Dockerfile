FROM webdevops/liquibase:mysql

ENV LIQUIBASE_CHANGELOG=/liquibase/changelog/liquibase-template-service-changelog.xml
ENV LIQUIBASE_DRIVER=org.mariadb.jdbc.Driver

COPY changelog /liquibase/changelog

CMD ["update"]
