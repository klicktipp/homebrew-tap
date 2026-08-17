cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.2"
  sha256 arm:   "6b6a50f39b8362dc97166d1d992427b5a854302c7fbc74871e7a3ed586c1413c",
         intel: "dfd039cc97671d6ca02ff2ce95762e127ddecc81554ee5287a89c76a06e3a8b9"

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
