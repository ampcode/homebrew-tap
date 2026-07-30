class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785398765-gb5ffcb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785398765-gb5ffcb/amp-darwin-arm64"
      sha256 "fcdf6121cc3f64d96711fc8eb22fbf760c7dda7c2ecd9573967addf9719c1673"
    else
      url "https://static.ampcode.com/cli/0.0.1785398765-gb5ffcb/amp-darwin-x64"
      sha256 "4c772bdf66bf09c1cc95ce44bfc7857c82617a5e8730f070d8d62557616d0b2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785398765-gb5ffcb/amp-linux-arm64"
      sha256 "0f0008eb5216b88b956d9b0ad1419a270929ae7bd6a25baaf85cc7997958f1dc"
    else
      url "https://static.ampcode.com/cli/0.0.1785398765-gb5ffcb/amp-linux-x64"
      sha256 "0a669a74576433dd5b5fa99f52c06a96a5f913cd5182e5e377c1d8e550dc4f39"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
