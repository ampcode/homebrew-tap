class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772158270-g7676d5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772158270-g7676d5/amp-darwin-arm64"
      sha256 "71dd268357d6642320e801a5c73952934efd3cafd0e1cf516d1a16b0514c8b56"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772158270-g7676d5/amp-darwin-x64"
      sha256 "a04b22d3aa927dbf61c0360cbb7cfb5807853e87363c08845bbeba1227e0e8aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772158270-g7676d5/amp-linux-arm64"
      sha256 "3e4f85686c5a318e5d2c3d6f82c2e2d189347f0f357b053bc2ee31ba2e07b6f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772158270-g7676d5/amp-linux-x64"
      sha256 "1e16062e45bd9b571ae88c63b947a81dfd3237b937068d8d3bc645030d8c116d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
