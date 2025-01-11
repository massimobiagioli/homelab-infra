# Base image
FROM arm32v7/openjdk:17-jdk-slim

# Imposta variabili di ambiente
ENV KC_VERSION=22.0.1
ENV KC_HOME=/opt/keycloak

# Installazione di wget
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    rm -rf /var/lib/apt/lists/*

# Scarica e prepara Keycloak
RUN mkdir -p /tmp/keycloak && \
    wget -O /tmp/keycloak.tar.gz https://github.com/keycloak/keycloak/releases/download/${KC_VERSION}/keycloak-${KC_VERSION}.tar.gz && \
    tar -xzf /tmp/keycloak.tar.gz -C /tmp/keycloak && \
    mv /tmp/keycloak/keycloak-${KC_VERSION} ${KC_HOME} && \
    rm -rf /tmp/keycloak /tmp/keycloak.tar.gz

# Imposta il working directory
WORKDIR ${KC_HOME}

# Comando di avvio predefinito
CMD ["bin/kc.sh", "start-dev"]
