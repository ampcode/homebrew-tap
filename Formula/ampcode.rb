class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790236865-g40d640"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790236865-g40d640/amp-darwin-arm64"
      sha256 "4f2cb405dc33a7efd3abae97822eedb37c1f811e95d8c2c3b50c32dcac62c78a"
    else
      url "https://static.ampcode.com/cli/0.0.1790236865-g40d640/amp-darwin-x64"
      sha256 "38385d6d983576bbf47c0282b49671f11c930c2c413763a2c1e78b16358abef0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790236865-g40d640/amp-linux-arm64"
      sha256 "8b9aa8fe831de847ebf07356784b0dd2564eb367069e2b376411b344dba2a2ae"
    else
      url "https://static.ampcode.com/cli/0.0.1790236865-g40d640/amp-linux-x64"
      sha256 "c87ac724d99e0cc7107b268b97f68fbf969cdb94b5d0bd44d1eee3ecfb739969"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
