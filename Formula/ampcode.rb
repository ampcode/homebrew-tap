class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776238798-g70f9b1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776238798-g70f9b1/amp-darwin-arm64"
      sha256 "e8bc1c89a1ae003905a4c45bb97a2aa799f443f29c620dfae8347c6a584ec3ec"
    else
      url "https://static.ampcode.com/cli/0.0.1776238798-g70f9b1/amp-darwin-x64"
      sha256 "5d971a3c5be31ce06b433c9de2e68fb398fccb21c80c1009ee0ac397d6ebc433"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776238798-g70f9b1/amp-linux-arm64"
      sha256 "cf632f62d36329947c91bd47d7691e6bdbaee0b536cf8e77e92c87a7298684f7"
    else
      url "https://static.ampcode.com/cli/0.0.1776238798-g70f9b1/amp-linux-x64"
      sha256 "87e345f9741443c0c2cc98e1d8bc4f02731cfc0a0551970ab6967790bd4b1741"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
