FROM alpine
WORKDIR /
COPY entrypoint.sh /entrypoint.sh
RUN wget https://install.speedtest.net/app/cli/ookla-speedtest-1.0.0-x86_64-linux.tgz && \ 
    tar -C / -xvf ookla-speedtest-1.0.0-x86_64-linux.tgz && \ 
    chmod +x /entrypoint.sh && rm -rf ookla-speedtest-1.0.0-x86_64-linux.tgz
ENTRYPOINT ["/entrypoint.sh"]