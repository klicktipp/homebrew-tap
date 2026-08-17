cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.3"
  sha256 arm:   "afa2c55922206894038d7bbb42e12d6b4f76336e05070dccfd7dee40ac897476",
         intel: "713267084a0f5cc1b2c5174f8aefba4a4a520da282880bc63c05f67afcbd93a1"

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
