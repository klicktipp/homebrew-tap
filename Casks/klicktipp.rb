cask "klicktipp" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "ebd408f7c1b1eccd50e4671858eb7dcb8cc863e7b51664c3e6e7cb31a05804e6",
         intel: "ae5d72064c31b716114042263d5585be0b0e4af82fe771acd3fcda4c5d573a85"

  url "https://github.com/klicktipp/homebrew-tap/releases/download/v#{version}/klicktipp-#{version}-darwin-#{arch}.zip"
  name "KlickTipp CLI"
  desc "Command-line interface for KlickTipp"
  homepage "https://www.klicktipp.com/"

  depends_on macos: :monterey

  binary "KlickTipp CLI.app/Contents/MacOS/klicktipp"
end
