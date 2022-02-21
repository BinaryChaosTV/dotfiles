pacmd load-module module-jack-sink
pacmd load-module module-jack-source
pacmd load-module module-jack-sink client_name=WebMusic_OUT
pacmd load-module module-jack-sink client_name=Discord_OUT
pacmd load-module module-jack-source client_name=Discord_IN
pacmd set-default-sink jack_out
pacmd set-default-source jack_in
