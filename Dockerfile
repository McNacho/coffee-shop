FROM docker.java9.nacho.com/openliberty:1
COPY target/coffee-shop.war $DEPLOYMENT_DIR