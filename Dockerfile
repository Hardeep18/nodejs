FROM ubuntu

# Core dependencies
RUN apt-get update && apt-get install -y curl sudo && \
       apt-get -q -y install openssh-server

# Node
# Uncomment your target version
# RUN curl -fsSL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# RUN curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN npm install -g @angular/cli