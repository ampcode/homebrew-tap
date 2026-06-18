class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781775128-g8e5a6f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781775128-g8e5a6f/amp-darwin-arm64"
      sha256 "67de9bc73042fc3c965945cacc4ab1c8b9b2c5c2b6439429f46c04bb05c4368b"
    else
      url "https://static.ampcode.com/cli/0.0.1781775128-g8e5a6f/amp-darwin-x64"
      sha256 "41ee96327570e7f6fb38eda3239b48dbfe7193aa2fb4f5805e4c2373a27bb1af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781775128-g8e5a6f/amp-linux-arm64"
      sha256 "14408afb9b93dcafdf7b636b2765a979af816e1ab955ab3d84fcb885fb0101c0"
    else
      url "https://static.ampcode.com/cli/0.0.1781775128-g8e5a6f/amp-linux-x64"
      sha256 "ae547773f53b8ea145b513432588c383f3ec163d8ab60b57684e2b97948b1617"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
