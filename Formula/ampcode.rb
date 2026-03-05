class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772734393-g2a936a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772734393-g2a936a/amp-darwin-arm64"
      sha256 "f2518f6f51881d114d9f20bb2b89f88db12ea6f294be445a7c067149b1ca0deb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772734393-g2a936a/amp-darwin-x64"
      sha256 "d67cb90d06e283d40900a16ee111b745f048a28dd08369d117272406d0151d0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772734393-g2a936a/amp-linux-arm64"
      sha256 "2d9210e995030a7ad0f4a6b8b7b2189b5eda78d2bdc96184a79f4c59f83b25d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772734393-g2a936a/amp-linux-x64"
      sha256 "5ac6e355f8851f54dbd567455a3734c1e5042bd9121080fcdb0e1cbe302a6926"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
