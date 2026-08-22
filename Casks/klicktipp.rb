cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.0"
  sha256 arm:   "55bf74981aec0311f65fbf8a72b80289a539f22518431c43ee91d24c31ca4d3b",
         intel: "555a9eeef973534104e040a76cd0b06e6aaf0868651c8816b964384d9128a015"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-#{arch}.pkg",
      verified: "github.com/klicktipp/homebrew-tap/"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  pkg "klicktipp-#{version}-darwin-#{arch}.pkg"
  binary "/Library/Application Support/KlickTipp/klicktipp"

  uninstall pkgutil: "^com[.]klicktipp[.]cli[.]pkg$"
end
