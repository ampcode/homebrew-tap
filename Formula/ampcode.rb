class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776315449-gabb1b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776315449-gabb1b0/amp-darwin-arm64"
      sha256 "6d20f3d1e161897b00c41a705aaba0575339c9bff8f86c2508f3b98fabc5c5a3"
    else
      url "https://static.ampcode.com/cli/0.0.1776315449-gabb1b0/amp-darwin-x64"
      sha256 "a4ec7fdae21ce5cce08b95b45340663105d734bb84832b6165979988b83e5581"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776315449-gabb1b0/amp-linux-arm64"
      sha256 "a55ce5b3e43976741fd000cb13fca224741e7b643ad0ecddc48483a7ed7b15b3"
    else
      url "https://static.ampcode.com/cli/0.0.1776315449-gabb1b0/amp-linux-x64"
      sha256 "a2dcc115c3485c3b97dde78fabc0218e02718ab353583b3b119a369bee5d8a70"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
