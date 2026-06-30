class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782822896-gaf230b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782822896-gaf230b/amp-darwin-arm64"
      sha256 "3e1420ad51762c22ad13a3fd6eb7fda457d88c3cfff374935711c44c77e00d2a"
    else
      url "https://static.ampcode.com/cli/0.0.1782822896-gaf230b/amp-darwin-x64"
      sha256 "2f7d32270cf1f9bd694bd242c2863fa3747ddda6577c200f6424fa7b4b5b0b6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782822896-gaf230b/amp-linux-arm64"
      sha256 "c27cfa1c8ebecfa9ced1f4f6a6a53e0200c098306ed37a826c0b71e367b70bb6"
    else
      url "https://static.ampcode.com/cli/0.0.1782822896-gaf230b/amp-linux-x64"
      sha256 "168b5f9bc9b433aa2590517d4c05997306540dac429600187bf2e277e379efcb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
