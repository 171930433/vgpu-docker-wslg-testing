



docker run --gpus all \
    -e "PATH=/usr/lib/wsl/lib:$PATH" \
    -e "LD_LIBRARY_PATH=/usr/lib/wsl/lib:$LD_LIBRARY_PATH" \
    -e DISPLAY \
    -e WAYLAND_DISPLAY \
    -e XDG_RUNTIME_DIR \
    -e PULSE_SERVER \
    -e MESA_D3D12_DEFAULT_ADAPTER_NAME=NVIDIA \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /mnt/wslg:/mnt/wslg \
    -v /usr/lib/wsl:/usr/lib/wsl \
    -v /usr/lib/wsl/lib:/usr/lib/wsl/lib \
    -v /lib/modules:/lib/modules \
    -v /dev/dev \
    -v /etc/timezone:/etc/timezone:ro \
    -v /etc/localtime:/etc/localtime:ro \
    -v .:/home/$USER/ros_ws \
    --name ubuntu1804-ros \
    -itd ubuntu1804-ros:melodic /bin/bash