class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771747379-gbb5ca2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771747379-gbb5ca2/amp-darwin-arm64"
      sha256 "f9e662e20a22689ff433a64626056aeba3ed15fe914d4d62df945c26c8211202"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771747379-gbb5ca2/amp-darwin-x64"
      sha256 "a81997b2caf652f408ed8ab30878bbcc0158b9cf93ea7d3e080da8632146123a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771747379-gbb5ca2/amp-linux-arm64"
      sha256 "2c971614c067c958b1b376bc3b9ebc520838dd40f11d35374914eeded1689680"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771747379-gbb5ca2/amp-linux-x64"
      sha256 "0d6193b8e7a4337459508e33f8a34ea0bb06254a5180cc979a85a5672ebd3933"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
