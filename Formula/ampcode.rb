class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791460855-g1f688c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791460855-g1f688c/amp-darwin-arm64"
      sha256 "cf13612bbed4a41d750856e168725bce6509d70c1cd5accea399a5b8a39eef36"
    else
      url "https://static.ampcode.com/cli/0.0.1791460855-g1f688c/amp-darwin-x64"
      sha256 "8a2033811bb8a697424da26d48d3bf511aedd294e7b17f015486dd9bcec0ca37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791460855-g1f688c/amp-linux-arm64"
      sha256 "92fef8633f67f38151c35eaddf6cf0e1772c9c8f5d35046d52ae957ffbbdc1f1"
    else
      url "https://static.ampcode.com/cli/0.0.1791460855-g1f688c/amp-linux-x64"
      sha256 "136fb9c25458d8f6f265f080b8c893d0f2cc71a2e2defacc1db4fb0c3b5f8bc4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
