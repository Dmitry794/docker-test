FROM centos

COPY scripts/ /scripts/

RUN chmod +x /scripts/init-security.sh \
 && chmod +x /scripts/ump-init.sh \
 && /scripts/init-security.sh

ENTRYPOINT ["/scripts/ump-init.sh"]
 

