# dotfiles

## Install

```bash
git clone https://github.com/epogue/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

Run it again anytime to update.

## Adding dotfiles

Drop files in `rc/` and run `rcup`. RCM handles the symlinks:

- `rc/foo` → `~/.foo`
- `rc/config/bar/baz` → `~/.config/bar/baz`
