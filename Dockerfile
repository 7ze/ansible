FROM archlinux AS base
WORKDIR /usr/local/bin/
RUN pacman -Syyu --noconfirm && \
    pacman -Syu --noconfirm curl git zsh ansible neovim base-devel
# set root password to archie
RUN echo "root:archie" | chpasswd

FROM base AS zeus
ARG TAGS
# add user and set user password
RUN groupadd zeus --gid 1000
RUN useradd -m --gid 1000 -G wheel -s /bin/zsh zeus
RUN echo "zeus:archie" | chpasswd
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER zeus
WORKDIR /home/zeus/

FROM zeus
COPY . ./ansible
CMD ["sh", "-c", "ansible-playbook $TAGS ansible/local.yml"]
