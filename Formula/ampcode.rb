class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769702877-g52d4ec"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769702877-g52d4ec/amp-darwin-arm64"
      sha256 "15851b6423d1d22ea537b8fd68295d6dbf2b60b29d96c5e69e7502369a6fa374"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769702877-g52d4ec/amp-darwin-x64"
      sha256 "25eeaf6375faef67f423bdb53800d551eb073163c941fb87d2129072638689b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769702877-g52d4ec/amp-linux-arm64"
      sha256 "1d21f64706c07a38391ed740a9283ff5ac2e6fa25d50b4ba279bcf02e06fb0b0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769702877-g52d4ec/amp-linux-x64"
      sha256 "e70bd566bfe387410943e57daa3704d4e0252f63ca235029b1140db053acc835"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
