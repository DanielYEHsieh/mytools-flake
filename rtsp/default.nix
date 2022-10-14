{ lib, writeShellApplication, rtsp-simple-server, ffmpeg, youtube-dl, coreutils, ... }:
{
  server = writeShellApplication {
    name = "rtsp-server";
    runtimeInputs = [rtsp-simple-server ffmpeg youtube-dl coreutils];
    text = builtins.readFile ./rtsp-server;
  };
}
