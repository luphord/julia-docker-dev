FROM codercom/code-server:3.10.2

RUN sudo apt update && sudo apt install -y wget gnupg python3-pip
RUN python3 -m pip install --user -U jill
RUN python3 -m jill install --confirm --install_dir ~/julia 1.6.1
RUN sudo ln -s ~/julia/julia-1.6/bin/julia /usr/local/bin/julia

ENV SERVICE_URL=https://open-vsx.org/vscode/gallery
ENV ITEM_URL=https://open-vsx.org/vscode/item

EXPOSE 8080