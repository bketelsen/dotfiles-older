
# Installing

If you're not curl bash'ing are you even a real developer?
```
curl  -sSL https://git.io/bketelsen | bash
```

## Using

```
chezmoi init https://github.com/bketelsen/dotfiles.git 
#or
chezmoi init git@github.com:bketelsen/dotfiles.git

# then
chezmoi apply
```

## creating curl bash
Use git.io or your favorite shortener and point to the bootstrap/setup script in your dotfiles repo:
```
curl -i https://git.io -F "url=https://raw.githubusercontent.com/bketelsen/dotfiles/master/setup.sh" -F code=bketelsen
```
## Notes

use the curl | bash above to INSTALL basic things like homebrew & chezmoi, maybe git, etc.  Then let chezmoi do what it does best with the `run_once_install-packages.sh` script which gets run when you do your first `apply`.
