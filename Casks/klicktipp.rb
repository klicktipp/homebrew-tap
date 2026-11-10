cask "klicktipp" do
  version "0.12.1"
  sha256 "14309cdb546a3b776569d1e063ef9c6c75ebc370e50c9877931c65911d8ff9d4"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-universal.zip"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  binary "klicktipp"
end
