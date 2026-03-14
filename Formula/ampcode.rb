class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773518520-g88a751"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773518520-g88a751/amp-darwin-arm64"
      sha256 "f6b62f9f68ec2a89fef6abef82e35e7b8c72b6d4164213157a0dab5c90f37c1d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773518520-g88a751/amp-darwin-x64"
      sha256 "36f1dd3e4461c248998155f9f770d28a1629c5211d12d77be00ba5caedea4c40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773518520-g88a751/amp-linux-arm64"
      sha256 "53221b8edce945d39d1e8ef6f09e4b5ba358d04ec2e3ff107d62d62d13574bbd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773518520-g88a751/amp-linux-x64"
      sha256 "f310c09c1f41e0aaf5b934c30cac0207dfc8436265963a7d93c6b6b746f19815"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
