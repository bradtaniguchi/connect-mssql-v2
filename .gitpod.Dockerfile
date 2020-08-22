FROM gitpod/workspace-full

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
RUN sudo apt-get update \
 && sudo apt-get install -y mssql-server \
 && sudo apt-get clean

# Installation and setup commands go here!
# following:
# https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15#install
# another good source worth looking into
# https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-configure-mssql-conf?view=sql-server-ver15


RUN sudo /opt/mssql/bin/mssql-conf setup

# TODO might not need this
RUN sudo mkdir -p /data/db \
 && sudo chown gitpod:gitpod -R /data/db