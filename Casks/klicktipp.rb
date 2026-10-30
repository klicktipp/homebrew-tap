cask "klicktipp" do
  version "0.11.0"
  sha256 "c4b19d4d9b4c6d681c8587697d3add93cfa9c82aa45bfaa5d1f9e1d263d0703d"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-universal.zip"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  binary "klicktipp"
end
