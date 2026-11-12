class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794484845-g2f1e0a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794484845-g2f1e0a/amp-darwin-arm64"
      sha256 "4c3d334127163cd17e7dafba10cd0acde7fb9e04e26a6f70a68a9793051533ac"
    else
      url "https://static.ampcode.com/cli/0.0.1794484845-g2f1e0a/amp-darwin-x64"
      sha256 "02bab60e15795bf684cb777e438aba72b65b75d9d58c9915d12149b9622ab1b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794484845-g2f1e0a/amp-linux-arm64"
      sha256 "32970399ec8061e8747dbab8bd76436aaf6146dfe72a52bd2cf64481a4a0e877"
    else
      url "https://static.ampcode.com/cli/0.0.1794484845-g2f1e0a/amp-linux-x64"
      sha256 "bf9139f2eb37acfef1231f4d30afa5aa1f5dd7489eab5bfcab7841e0d0c70a61"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
