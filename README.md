# Homebrew tap for battdoctor

Energy-first battery and performance monitor for Apple Silicon Macs.

## Install

```bash
brew tap kumararyan1/battdoctor
brew trust kumararyan1/battdoctor
brew install --cask battdoctor
```

The cask installs the menu bar app and depends on the `battdoctor` formula, which installs the
CLI under the Homebrew prefix. The app finds that CLI automatically.

## CLI only

```bash
brew install kumararyan1/battdoctor/battdoctor
```

## Optional powermetrics helper

```bash
sudo "$(brew --prefix battdoctor)/share/battdoctor/install_helper.sh"
```

## Uninstall

```bash
brew uninstall --cask battdoctor
brew uninstall battdoctor
```

Remove local data with:

```bash
rm -rf "~/Library/Application Support/battdoctor" ~/.battdoctor
```
