FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN wget http://storage.googleapis.com/dart-archive/channels/stable/release/latest/editor/darteditor-linux-x64.zip --quiet && \
    unzip darteditor-linux-x64 "-d" /home/ubuntu && \
    rm darteditor-linux-x64.zip

# install content_shell
RUN dart/chromium/download_contentshell.sh && \
    unzip content_shell-linux-x64-release.zip && \
    mv drt-* content_shell && \
    rm content_shell-linux-x64-release.zip