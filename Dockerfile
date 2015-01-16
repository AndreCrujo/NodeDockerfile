FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget git npm

# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz && \
  tar xvzf node-v0.10.29-linux-x64.tar.gz && \
  rm -f node-v0.10.29-linux-x64.tar.gz && \
  cd node-v0.10.29-linux-x64 && \
  echo -e '\n# Node.js\nexport PATH="/tmp/node-v0.10.29-linux-x64/bin:$PATH"' >> /root/.bashrc
 
RUN \
  cd /home

#RUN ["chown", "-R", "daemon", "."]
# Make sure myApp is excutable
#RUN ["chmod", "+x", "bin/myApp"]
#USER daemon

COPY ./git-log-prompt.sh /
ENTRYPOINT ["/git-log-prompt.sh"]

#RUN git clone https://github.com/AntonioJFSousa/Trading.git

#go to your project
RUN \
  cd Trading/ui_angular_trading && \
  node app.js

CMD ["/bin/bash"]  
EXPOSE 3001

#CMD [ "node", "appLocal.js" ]