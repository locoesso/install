sudo add-apt-repository ppa:pipelight/stable
#sudo dpkg --add-architecture i386
sudo apt-get update
#sudo apt-get install libasound2-plugins:i386
sudo apt-get install --install-recommends pipelight-multi
sudo pipelight-plugin --update
sudo pipelight-plugin --enable silverlight
firefox
sudo pipelight-plugin --create-mozilla-plugins
firefox www.katsomo.fi
#
echo Kato "#" kommentit...
