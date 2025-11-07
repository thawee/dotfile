

# Install dependencies
echo "Installing Homebrew dependencies…"
brew bundle install --upgrade --file Brewfile

zsh ghostty/ghostty_config.sh

curl -fsSL https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh | zsh

# SDK, Java, Gradle, Maven
echo "Installing sdkman dependencies…"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install java
sdk install gradle 
sdk install maven

# Node.js
echo "Installing Node.js dependencies…"
npm config set loglevel warn
npm install -g npm-upgrade
npm install
echo

