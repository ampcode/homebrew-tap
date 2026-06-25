class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782383540-g4ec8a7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782383540-g4ec8a7/amp-darwin-arm64"
      sha256 "30b6a381b95cff3bc1562f392ffa306e372610fa68da91da7231bffed6e62ca3"
    else
      url "https://static.ampcode.com/cli/0.0.1782383540-g4ec8a7/amp-darwin-x64"
      sha256 "31b83731c1becc3b3e228109c7a47c669351a4b91e443058e50cc750cf2f12e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782383540-g4ec8a7/amp-linux-arm64"
      sha256 "1e84faf00d8321f938eeb6c99754e3fc6d696bf599e8aedce63e9318a2594825"
    else
      url "https://static.ampcode.com/cli/0.0.1782383540-g4ec8a7/amp-linux-x64"
      sha256 "7d034a44093b5c96b62dc2c46e679dd8486280a3f9675aacf1071dda460b2c86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
