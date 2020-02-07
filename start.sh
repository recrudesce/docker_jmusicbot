#！/bin/bash
cd bot;
if [ ! -f JMusicBot-${VAR}-All.jar ]
then
	wget https://github.com/jagrosh/MusicBot/releases/download/${VAR}/JMusicBot-${VAR}-All.jar;
fi
java -server -jar JMusicBot-${VAR}-All.jar nogui;
