cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "67d3e374faf17e371b21de1ad479bb3bc31fcdd420f448fe2ba0774a6d0d9944",
         intel: "d04edd85a99a38ef5233c92cafbf7bf1899596a07cf1969a7a7f935c2b39c424"

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
