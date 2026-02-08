class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770552107-g48e892"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770552107-g48e892/amp-darwin-arm64"
      sha256 "514e8692a88b83d41f1753350546570a9b242f3726f866b69f1f74f7784919dc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770552107-g48e892/amp-darwin-x64"
      sha256 "fde118207dbf284a4479f5f500c932fe6ef829d7817780e1c0f03d31ca4f877d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770552107-g48e892/amp-linux-arm64"
      sha256 "41ba018ef5ad57f22b94fc00c114e4d42958656966cb16cbc50072e1fad4ac1b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770552107-g48e892/amp-linux-x64"
      sha256 "be137fd2f3d2c5970511cbda9edd398c4f475c7c0e4fce9dc517bd82a1ec2e5c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
