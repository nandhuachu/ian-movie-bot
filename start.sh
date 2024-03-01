if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TOICTONY/ian-movie-bot.git /ian-movie-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ian-movie-bot
fi
cd /ian-movie-bot
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
