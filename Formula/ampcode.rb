class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793018833-gf8cdfa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793018833-gf8cdfa/amp-darwin-arm64"
      sha256 "b97840b36a9de0e4c9d640c4d6ce8545612849f5c26a91a5d77d75dd80e565a4"
    else
      url "https://static.ampcode.com/cli/0.0.1793018833-gf8cdfa/amp-darwin-x64"
      sha256 "819c4646d55d33d631a6e1edb519c7bd59015a2a841ec40c415c53a6dd795a63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793018833-gf8cdfa/amp-linux-arm64"
      sha256 "f56c713a738f67953f63a601fc533d12e038823cef5e3563d1e7e21c68bb2e74"
    else
      url "https://static.ampcode.com/cli/0.0.1793018833-gf8cdfa/amp-linux-x64"
      sha256 "7dc69a134cf99c46ec5536b3b868762ea4595ef3d89cba0d1e25472c46546e0c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
