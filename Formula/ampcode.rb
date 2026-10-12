class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791826398-g4ffc77"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791826398-g4ffc77/amp-darwin-arm64"
      sha256 "2aa9d79f4c52b21ce228ae21dfcb4862e127ace5c193e3f0a118fe90c013be64"
    else
      url "https://static.ampcode.com/cli/0.0.1791826398-g4ffc77/amp-darwin-x64"
      sha256 "4f2b27573a626d4116e4f8badc72f93070e6ef073d315c1b53252f24a5066c4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791826398-g4ffc77/amp-linux-arm64"
      sha256 "4186b42945bfabe2fba7de234081bd0c9ebfec6ba82034c52fbe07bf0abc7e79"
    else
      url "https://static.ampcode.com/cli/0.0.1791826398-g4ffc77/amp-linux-x64"
      sha256 "fa70089ab2b67176cca1629db4ca27d3e154891d75ea0ca14201d47d1a43c3e4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
