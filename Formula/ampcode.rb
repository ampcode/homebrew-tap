class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787888254-g2bce74"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787888254-g2bce74/amp-darwin-arm64"
      sha256 "94a9e7d815eee7f818547a8c8ee1fb9ae8e39e4e84ea696d89f92dc57a3bb6a6"
    else
      url "https://static.ampcode.com/cli/0.0.1787888254-g2bce74/amp-darwin-x64"
      sha256 "9127a1fcbb393a47fa66349f0bd7f4c608ce834996e77cfe29084837448c5dd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787888254-g2bce74/amp-linux-arm64"
      sha256 "dd5afa246f18f742a93f94cb784c0af0486c3a02845e69f637e6fa036114a192"
    else
      url "https://static.ampcode.com/cli/0.0.1787888254-g2bce74/amp-linux-x64"
      sha256 "ea1a148a5b451848c96ede656252ce4548a4036178d873999e7c8abe6d05299b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
