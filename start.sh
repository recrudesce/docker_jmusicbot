#！/bin/bash
if [ ! -f /bot/JMusicBot-${VAR}.jar ]
then
	wget -P/bot https://github.com/jagrosh/MusicBot/releases/download/${VAR}/JMusicBot-${VAR}-All.jar;
fi
cd bot;
java -server -jar JMusicBot-${VAR}.jar nogui;
