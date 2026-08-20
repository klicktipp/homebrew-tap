cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.2"
  sha256 arm:   "530b228aa0dc1b6df6a75e2753327f3f06103aa892e049664431a4939f4b1bc4",
         intel: "3ed9be6123eac5696d5a523fda8192f2cfbdf91cd7ca51d10a1a0fb3492e8ca3"

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
