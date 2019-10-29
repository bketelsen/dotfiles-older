cd /usr/local/Homebrew/Library/Taps/homebrew
rm -rf homebrew-core
git clone https://github.com/Homebrew/homebrew-core.git
cd homebrew-core

brew uninstall --force unison
cd /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core
git checkout 05460e0bf3ae5f1a15ae40315940b2d39dd6ac52 Formula/unison.rb
brew install --force-bottle unison
git checkout master
git reset HEAD .
git checkout -- .
