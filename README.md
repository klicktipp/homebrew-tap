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
  login                           Authenticate and store a CLI session
  login status                    Validate the active CLI session and account
  logout                          End sessions created by KlickTipp CLI login
  contact sync                    Refresh the local contact mirror
  contact sync status             Inspect the active or latest contact sync
  contact search                  Search synchronized contacts
  contact create                  Create or upsert one contact
  contact update                  Update one contact
  contact delete                  Permanently delete one contact
  tag search                      Search synchronized tags and configuration
  tag sync                        Refresh the local tag mirror
  email unsubscribe-attribution   Report local unsubscribe attribution by email source
  newsletter content get          Read one newsletter's BEE content manifest
  newsletter content update       Apply one revision-bound patch to a newsletter draft
```

Run `klicktipp --help` or append `--help` to a command for its current options.
