FROM paopaorobot/ros-vnc:fuerte

MAINTAINER Chen Wang<mr_cwang@foxmail.com>

COPY . /root/fuerte_workspace/dvo/

RUN rosws init ~/fuerte_workspace /opt/ros/fuerte \
    && cd ~/fuerte_workspace \
    && rosws set -y ~/fuerte_workspace/dvo \
    && /bin/bash -l -c "source ~/fuerte_workspace/setup.bash && \
            cd ~/fuerte_workspace && \
            rosmake dvo_core dvo_ros dvo_benchmark"

RUN /bin/bash -c "echo 'source ~/fuerte_workspace/setup.bash' >> ~/.bashrc"
