FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i '/^#/d ; /^$/d ; s|archive.ubuntu.com|mirrors.ustc.edu.cn| ; s|security.ubuntu.com|mirrors.ustc.edu.cn|' /etc/apt/sources.list && \
    apt update && \
    apt install -y build-essential gdb gdbserver clang lldb qterminal fonts-noto && \
    apt install -y qtbase5-dev qttools5-dev-tools libicu-dev libqt5svg5-dev
