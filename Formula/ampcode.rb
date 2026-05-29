class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780045299-g6094cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780045299-g6094cf/amp-darwin-arm64"
      sha256 "7b8432444999339ae1d6e4058837424fccc29e4cdd03d8b844783a899ff588c6"
    else
      url "https://static.ampcode.com/cli/0.0.1780045299-g6094cf/amp-darwin-x64"
      sha256 "9b12fd0944d7ef0520143a5d1fb9d86207c21f3fec1e57ff551d8233f72e8020"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780045299-g6094cf/amp-linux-arm64"
      sha256 "2dd43e1b2b5c993991f179afc8d800a7e813ccedda69e379a601816ae2e626c4"
    else
      url "https://static.ampcode.com/cli/0.0.1780045299-g6094cf/amp-linux-x64"
      sha256 "8b712b07f6eb21cc7008545feb4780982fa3072d5cbbae1fe19024bc92fde7e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
