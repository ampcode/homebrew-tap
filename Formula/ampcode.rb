class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780637187-g70e21b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780637187-g70e21b/amp-darwin-arm64"
      sha256 "fd4d9c9a0ddee7971d45fd252c1fcab87279503072563ddf3c7af2dc221b52e3"
    else
      url "https://static.ampcode.com/cli/0.0.1780637187-g70e21b/amp-darwin-x64"
      sha256 "86d6b14ba54d7a65040a6789f7f2fbf77a4f3a87b72469080d089bd77edfbc72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780637187-g70e21b/amp-linux-arm64"
      sha256 "b7754454da530fb71412044e831ca45905679217ae00fe429f8439c9f20396ea"
    else
      url "https://static.ampcode.com/cli/0.0.1780637187-g70e21b/amp-linux-x64"
      sha256 "9b49251eda1a6d040f5556e8f6d7fa4111a380aed37f153e5c5ffa590d2c7e83"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
