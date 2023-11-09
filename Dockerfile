FROM sonarqube:10-community

ADD clever-entrypoint.sh /opt/sonarqube/docker/

ENTRYPOINT ["/opt/sonarqube/docker/clever-entrypoint.sh"]