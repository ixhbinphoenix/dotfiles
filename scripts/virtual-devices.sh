#!/bin/sh
# Loads all virtual audio devices and starts qjackctl for the patchbay

# Audio Channels

# Default Audio Channel, capturing everything except music and discord
pactl load-module module-null-sink media.class=Audio/Duplex sink_name=desktopAudio audio.position=FL,FR,RL,RR
# Discord Audio Channel
pactl load-module module-null-sink media.class=Audio/Duplex sink_name=dc audio.position=FL,FR,RL,RR
# Music Audio Channel
pactl load-module module-null-sink media.class=Audio/Duplex sink_name=music audio.position=FL,FR,RL,RR

# Sources
pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=mic channel_map=front-left,front-right