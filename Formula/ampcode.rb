class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772093373-ga09945"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772093373-ga09945/amp-darwin-arm64"
      sha256 "250629ef22278bb5feafd7fa15f9fc87dba61c295cf75aa8d55cc68537349d10"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772093373-ga09945/amp-darwin-x64"
      sha256 "1c4f66d7118014ea6add83928f801512097b3ad5f0ef9b4c38d3d4b38c005474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772093373-ga09945/amp-linux-arm64"
      sha256 "c4e926576c2a5634beaa479e7b883dfe87cdea7d67be3f09342e75725a178382"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772093373-ga09945/amp-linux-x64"
      sha256 "773288f6e98ed541cddf89c9e254c5043b0605d41a0040b3f5bbed50fb0e1004"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
