cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3"
  sha256 arm:   "f51d256d1c3eea25872b27ba6daf640a4f81549fdaa4f79b557b9c96cee03f9d",
         intel: "3b0db53371c577849b067cef0d8f52577e063f6f4254f1d83cf0924c4e0d5dd3"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-#{arch}.zip",
      verified: "github.com/klicktipp/homebrew-tap/"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  app "KlickTipp CLI.app"
  binary "klicktipp"
end
