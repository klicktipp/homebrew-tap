cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "e668a2b8781dca6bd3113b49f9519d7639abc439ad9a1ac913c8c29d5b3963cb",
         intel: "abcb9b969a346db529c948991ba10c05ff4bbad2b9670378e79cb3c297764fd1"

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
