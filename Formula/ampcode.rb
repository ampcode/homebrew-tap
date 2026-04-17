class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776405786-g16bcf9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776405786-g16bcf9/amp-darwin-arm64"
      sha256 "82f7f976808cce3c6a9bcd03b3eaecd4f29ef90ac3aeda158b7a525b4dc41366"
    else
      url "https://static.ampcode.com/cli/0.0.1776405786-g16bcf9/amp-darwin-x64"
      sha256 "415bdae0ab0a5272a89c7a27d76f3912a2bfb590ff6365365c9857398a3fd6fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776405786-g16bcf9/amp-linux-arm64"
      sha256 "0a93cbcd85190c963ab6fc599c5e5afb7225b3a3112b5778c873edec0de34aaa"
    else
      url "https://static.ampcode.com/cli/0.0.1776405786-g16bcf9/amp-linux-x64"
      sha256 "d2c58368cb8d943f4ab34e1fe97649208f1e9abf13b63c72d467128acb2574c2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
