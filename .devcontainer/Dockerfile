# Basis: https://github.com/microsoft/vscode-remote-try-sqlserver/tree/main
# auto-run against latest
FROM mcr.microsoft.com/devcontainers/typescript-node


ARG NODE_VERSION="none"
RUN if [ "${NODE_VERSION}" != "none" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install latest 2>&1"; fi
