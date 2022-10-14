# Introduction

This flake contains tools I often use. They are available through nix flakes.


## Supported platforms

- MacOS x86-64
- Linux x86-64/aarch64

## Prerequisites

- Install Nix by following the instructions:
  <https://nixos.org/manual/nix/stable/installation/installing-binary.html>

- Run the command to update nix.conf:

        mkdir -p ~/.config/nix && echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf

# Setup RTSP streams

You could set up RTSP streams from local files or youtube URLs:
``` sh
# The command below setup 2 streams from a youtube URL and a local file(/tmp/video.mp4) using /tmp/rtsp as a
# working directory. It will download the youtube video before starting streaming, so it might take a while.
# If you use the same working directory between 2 runs, you don't need to download the same youtube video again.
>nix run 'github:abaw/mytools-flake#rtsp-server' -- /tmp/rtsp 'https://www.youtube.com/watch?v=AVBHlKJp9Mo' 'file:///tmp/video.mp4'

# The RTSP streams will be available at rtsp://<your-ip>:8554/clip0, rtsp://<your-ip>:8554/clip1 and so on.

# If you do not offer any arguments, it shows a help message.
>nix run 'github:abaw/mytools-flake#rtsp-server'
```
