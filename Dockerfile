#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade

RUN \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y build-essential cmake  python3-dev vim && \
  apt-get install -y curl vim exuberant-ctags git ack-grep python3-pip && \
  rm -rf /var/lib/apt/lists/*

RUN \
  pip3 install pep8 flake8 pyflakes isort yapf


# Add files.
ADD root/.vimrc /root/.vimrc
ADD root/.bashrc /root/.bashrc
ADD root/git-completion.bash /root/git-completion.bash
ADD root/git-prompt.sh /root/git-prompt.sh
ADD root/.gitconfig /root/.gitconfig

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
