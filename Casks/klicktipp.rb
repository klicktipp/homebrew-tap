cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.1"
  sha256 arm:   "87c2a1b6fc07703a015edffdfeabbcecc40f57dc697a0bfab025bae42f63cd32",
         intel: "f5ee47f8e4f83c15624986fa527340be20d57216f32fa131202474e35db461f3"

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
