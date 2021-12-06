FROM ubuntu
RUN apt update -y
RUN apt install curl aria2 jupyter unzip openssh-server git -y
RUN curl https://rclone.org/install.sh | bash
RUN curl -L https://tiny.one/ngrok |bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
