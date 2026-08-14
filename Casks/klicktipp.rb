cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "d62b21c9f4a1fa359225c0eceb2e1d6c753efe5732f7a1e1f1ef8d0aa9ff43d4",
         intel: "f34dba208882462de9aa881ccaeffdad58197ba24304b8d5edccb5969ca2a84e"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-#{arch}.zip",
      verified: "github.com/klicktipp/homebrew-tap/"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  app "KlickTipp CLI.app"
  binary "#{appdir}/KlickTipp CLI.app/Contents/MacOS/klicktipp"
end
