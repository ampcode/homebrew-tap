class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771648121-gd6ba37"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771648121-gd6ba37/amp-darwin-arm64"
      sha256 "017de3fcac6351722e046ac329a281cd289811f65a62061339ef30111f152439"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771648121-gd6ba37/amp-darwin-x64"
      sha256 "401ee0ccd8f944f9fd9cbb6465f92f9e1675a203492c68bbbdf8f0d7ae354adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771648121-gd6ba37/amp-linux-arm64"
      sha256 "e88950bd270779dfab1dcfaeae8691b830a4e91da51ab7f9965c644b9d2cc5c4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771648121-gd6ba37/amp-linux-x64"
      sha256 "261620945c8ca49c05de3a53d10777b7423582235ead77f5ea58dc53e81f8ba1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
