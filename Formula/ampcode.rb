class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786090945-g2d4407"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786090945-g2d4407/amp-darwin-arm64"
      sha256 "2d4e40ca2960474d7273ee7a8700ca41492e83e089e949b9b58b61bf66a627e4"
    else
      url "https://static.ampcode.com/cli/0.0.1786090945-g2d4407/amp-darwin-x64"
      sha256 "e96de472bc8508ee25ae4db2156d087627344051a2e45e8cba72ec6f64193b09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786090945-g2d4407/amp-linux-arm64"
      sha256 "52c5fc49c3135fb7b8d8c585ca5c66f3bee72c062d77ba80f1ca8dcac2aad15f"
    else
      url "https://static.ampcode.com/cli/0.0.1786090945-g2d4407/amp-linux-x64"
      sha256 "4eb6fd67e4769b60fdf2e27ec9b9e0a6aba500957d81381134510fbba86a857f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
