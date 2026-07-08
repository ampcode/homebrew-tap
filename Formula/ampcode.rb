class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783522491-g856676"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783522491-g856676/amp-darwin-arm64"
      sha256 "7feba7b7dc8e5e07e1bc1c1cfe254845390bb00b38e1f790d2a868c1f45f0573"
    else
      url "https://static.ampcode.com/cli/0.0.1783522491-g856676/amp-darwin-x64"
      sha256 "722b9a6d7715c64c7a9af626aadff8702d8bceb204ed96c632c780169e808eb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783522491-g856676/amp-linux-arm64"
      sha256 "2c346e4c6468caabb157e002369a814e32a00aba37f4de97a491561c51dd0dcf"
    else
      url "https://static.ampcode.com/cli/0.0.1783522491-g856676/amp-linux-x64"
      sha256 "38cca47ccaac07e43de53bf4cf20e59ea8e6f073dc10b7d6e5b4684c2e7c6e86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
