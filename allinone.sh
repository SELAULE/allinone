# check if we in home

if [ ! -d "$HOME" ]; then
  echo "\033[0;31mNot in home"
fi

cd ~/

if [ ! -d "$HOME/.brew" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/wethinkcode/homebrew/master/install.sh)"
    echo "\033[0;31mBrew not found!!!!!!!!"
  # Control will enter here if $DIRECTORY doesn't exist.
fi

# Restaring the shell
# exec zsh

brew install node

node -v

npm install nodemon -g