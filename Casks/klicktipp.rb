cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1"
  sha256 arm:   "eca7f9fad53621025906139058d2843335a915ce28d8739367c26884308e4488",
         intel: "486ba4a263708924048cc361b0acfa8e84b8330ce7ba279d1331f9c0f11f7b31"

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
