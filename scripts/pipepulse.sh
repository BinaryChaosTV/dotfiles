jack_mixer -c ~/.config/jack_mixer/config.xml &
pactl load-module module-null-sink media.class=Audio/Sink sink_name=pipe_sink
pactl load-module module-null-sink media.class=Audio/Sink sink_name=WebMusic_OUT channel_map=stereo
pactl load-module module-null-sink media.class=Audio/Duplex sink_name=DISCORD_IN_OUT channel_map=stereo
pactl set-default-sink pipe_sink
