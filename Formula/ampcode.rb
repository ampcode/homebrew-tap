class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789934445-g6f6d2f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789934445-g6f6d2f/amp-darwin-arm64"
      sha256 "a63cf1c9f96ae8e444d274d93ea7ed689da69b76f13588c4748f6a07ce34a439"
    else
      url "https://static.ampcode.com/cli/0.0.1789934445-g6f6d2f/amp-darwin-x64"
      sha256 "8da44f65e81fef90c9c6d878916c0aa68854b92036c46f98cce2803b2a0a574b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789934445-g6f6d2f/amp-linux-arm64"
      sha256 "dc44a5d54ea5ece13b151dd7b06ca08afd2446c13303383fbad53b055451d622"
    else
      url "https://static.ampcode.com/cli/0.0.1789934445-g6f6d2f/amp-linux-x64"
      sha256 "2ebdd9cfed6d885beaf0c5ed0f9617f82c5ac33eb652229feba75a2f3891b705"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
