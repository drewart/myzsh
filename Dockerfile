FROM ubuntu

COPY zshrc /root/.zshrc

RUN apt-get update && apt install -y curl zsh git

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CMD /usr/bin/zsh
