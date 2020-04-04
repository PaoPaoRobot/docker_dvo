FROM optsolution/ros-vnc:fuerte

RUN mkdir ~/fuerte_workspace \
    && rosws init ~/fuerte_workspace /opt/ros/fuerte \
    && cd ~/fuerte_workspace \
    && git clone -b my-fuerte-docker https://github.com/OptSolution/dvo.git \
    && rosws set -y ~/fuerte_workspace/dvo
    
RUN /bin/bash -l -c "source ~/fuerte_workspace/setup.bash && \
        cd ~/fuerte_workspace && \
        rosmake dvo_core dvo_ros dvo_benchmark"

RUN /bin/bash -c "echo 'source ~/fuerte_workspace/setup.bash' >> ~/.bashrc"
