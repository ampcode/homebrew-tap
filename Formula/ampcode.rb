class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792281673-g5ce754"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792281673-g5ce754/amp-darwin-arm64"
      sha256 "3a0f0ca914af518b5c64929d1ef511edd5440865ab0b0f9890ac1f332e6109e5"
    else
      url "https://static.ampcode.com/cli/0.0.1792281673-g5ce754/amp-darwin-x64"
      sha256 "79f18ae8b9ba5b123cd5494f7de87de70ec59e67baddd3ab3840b5dd985725b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792281673-g5ce754/amp-linux-arm64"
      sha256 "224174866866c7f045a445c548158b6d126dd5d15764deddd3c5c06af3c19928"
    else
      url "https://static.ampcode.com/cli/0.0.1792281673-g5ce754/amp-linux-x64"
      sha256 "87c0504d9ced703f45efb13a933e4517d34e089211c1c7ded195b8f0b828778d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
