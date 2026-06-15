class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781516947-g14ca70"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781516947-g14ca70/amp-darwin-arm64"
      sha256 "286731cf6c0a2e3b559c9a4c13bf66bea66c6cb8bf2b4238e90d5f1af199f659"
    else
      url "https://static.ampcode.com/cli/0.0.1781516947-g14ca70/amp-darwin-x64"
      sha256 "5f97b0977889b9b3ac7d437ecbcfa005a2af7a2baeab3b15c1ad3d4c2f5f31bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781516947-g14ca70/amp-linux-arm64"
      sha256 "91e0b5c41fa11dbf16a54ccc6c3003b358dd48c335e2ab7a9555b5f082eda0d8"
    else
      url "https://static.ampcode.com/cli/0.0.1781516947-g14ca70/amp-linux-x64"
      sha256 "5a5dee907dd44b2f04b467b6e92e4142831ef8d2172600a63b9c4ba246b7b720"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
