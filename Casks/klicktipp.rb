cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.0"
  sha256 arm:   "74f12b7b4d1669f0e57f5f39530e850ee9abe35a16de1d7ce5721c0fd643ba82",
         intel: "c11b51ab8a35575ce04007c126ca8f5859a3643fabbbff4f412768c059f163ea"

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
