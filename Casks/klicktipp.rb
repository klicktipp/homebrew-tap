cask "klicktipp" do
  version "0.10.0"
  sha256 "b335f69213983407accb025c747e715e3485f8bb8eb8078fc043b4b021422713"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-universal.zip"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  binary "klicktipp"
end
