class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771902991-gfa103f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771902991-gfa103f/amp-darwin-arm64"
      sha256 "93f6fd9ff7a675f4cad27e5537053de77d1a2108ec8160c4dd799bf7ac6bb7cf"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771902991-gfa103f/amp-darwin-x64"
      sha256 "9b3c1cd93f6f61f19a3962723b4a93d75c850e96fc8154cdfabc9032140cbc72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771902991-gfa103f/amp-linux-arm64"
      sha256 "a8e4fa1dab2c6c5d1c5ca5c80ae9bf770ce8fc4eb6fd2c4d9f26a0b6c2485562"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771902991-gfa103f/amp-linux-x64"
      sha256 "011737b8ba22711bab29a58e97f31470709e97e5c27c72360cade925b90cf2d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
