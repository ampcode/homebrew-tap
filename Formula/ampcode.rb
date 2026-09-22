class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790103932-g7c3282"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790103932-g7c3282/amp-darwin-arm64"
      sha256 "4b1eaa3d3298d8b54daf8b57d6de0ca11e7a2028c98ed82c71a8bea62f102d96"
    else
      url "https://static.ampcode.com/cli/0.0.1790103932-g7c3282/amp-darwin-x64"
      sha256 "84c9f2f43baa45f9f969a27818e4763f41c77c814b00ce8e331979e0d0352ba1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790103932-g7c3282/amp-linux-arm64"
      sha256 "a7144ec93cf61f9e5b2061a50d74993332c1e942bd3ada92c25f3c64773ba92b"
    else
      url "https://static.ampcode.com/cli/0.0.1790103932-g7c3282/amp-linux-x64"
      sha256 "0bcfd31c10d10d601f418fcb3efe268d92b010d696ca87c288a009309921cd0f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
