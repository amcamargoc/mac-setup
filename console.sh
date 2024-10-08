# ---- Iterm 2 --- 
echo "Installing a more configurable terminal\n"
brew install iterm2
echo "Iterm2 installed \n"

# ---- Zshell -----
echo "Using Z shell in Iterm2"
brew install zsh
echo "Zshell installed. Ready to boost up with oh-my-zsh"

# ---- Oh my ZSH ----
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ---- Create SSH ---
echo "generating ssh key chain for repository"
# In case of errors due macOS variants. take a look into:
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub

echo "ssh copied into clipboard, copy and paste in repo (Github or Gitlab. Works pretty good to me)"
