class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777092396-g58772b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777092396-g58772b/amp-darwin-arm64"
      sha256 "c7061fbcaf6ef4f5406b482b14a129a5fedadfb0a336bb4ccea5664794ea895f"
    else
      url "https://static.ampcode.com/cli/0.0.1777092396-g58772b/amp-darwin-x64"
      sha256 "ff7d5bce4dab610ae284714fc4f9e70ca25fff5be9f60bb508858eb16f557490"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777092396-g58772b/amp-linux-arm64"
      sha256 "15767bd14254706cd87a76a6071cb76cee83423e88d1c107d0a0398132807480"
    else
      url "https://static.ampcode.com/cli/0.0.1777092396-g58772b/amp-linux-x64"
      sha256 "3058ba6e90c80cfbaae1ed2deaa78e1867e890ef5cdb678302ee6e42a0cf97e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
