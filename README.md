# KlickTipp Homebrew Tap

Official Homebrew tap and signed macOS releases for the KlickTipp CLI.

## Install

```sh
brew install klicktipp/tap/klicktipp
```

To update an existing installation:

```sh
brew update
brew upgrade --cask klicktipp
```

## Commands

```text
klicktipp login --username NAME
klicktipp login status
klicktipp logout
klicktipp contact sync [--full [--yes] [--tag-id ID]]
klicktipp contact sync status
klicktipp contact search [options]
klicktipp contact create [options]
klicktipp contact update [options]
klicktipp contact delete [options]
klicktipp tag search [options]
klicktipp tag sync
klicktipp email unsubscribe-attribution --timezone ZONE [options]
klicktipp newsletter content get [options]
klicktipp newsletter content update [options]
```

Run `klicktipp --help` or append `--help` to a command for its current options.
