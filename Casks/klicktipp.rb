cask "klicktipp" do
  version "0.13.0"
  sha256 "80dfb216592dfc8104f7d97f91e01f2ef50f4ecbe4d55abf20addafde3d213e9"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-universal.zip"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  binary "klicktipp"
end
