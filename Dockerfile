FROM rclone/rclone:latest
RUN apk add --no-cache postgresql-client mysql-client bash curl wget ca-certificates
# for rds
RUN wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem \
    -O /etc/ssl/certs/rds-ca-bundle.pem
