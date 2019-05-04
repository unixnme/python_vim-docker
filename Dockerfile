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
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

RUN apt-get install vim

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

# youcompleteme
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall

# Define default command.
CMD ["bash"]

