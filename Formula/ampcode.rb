class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790395249-g17ed45"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790395249-g17ed45/amp-darwin-arm64"
      sha256 "f43752540208d4f8b944884d209318731cee609801665d9a31503bcdba1ea292"
    else
      url "https://static.ampcode.com/cli/0.0.1790395249-g17ed45/amp-darwin-x64"
      sha256 "e18d183932e63bc12d3938c2d8474d9476a2f5a1a16b29f3ff8ad7d0086a2407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790395249-g17ed45/amp-linux-arm64"
      sha256 "f7f044a877790bcbc84f3fbe879c0a5537e70526a39c957f1ddd8dcdb3ba1083"
    else
      url "https://static.ampcode.com/cli/0.0.1790395249-g17ed45/amp-linux-x64"
      sha256 "80cf85f9acc0f95bbce7b8d9d0cce248944c8b3e9b9694e0ee573e0a7129e1f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
