class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788967642-g223bb4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788967642-g223bb4/amp-darwin-arm64"
      sha256 "3bb93a9276c839706952f49a110b71c03d9738a6be8f9a0e63606fbe33a2d123"
    else
      url "https://static.ampcode.com/cli/0.0.1788967642-g223bb4/amp-darwin-x64"
      sha256 "08183779e0ac0edd192b1113da177b0af883277db8934a3051c381c6756bee38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788967642-g223bb4/amp-linux-arm64"
      sha256 "bf209cc39d246ba27903dc9ae7575627ce4a1ac8e7964cc30c50f536a01a2a4f"
    else
      url "https://static.ampcode.com/cli/0.0.1788967642-g223bb4/amp-linux-x64"
      sha256 "86a31c3f4d7eff9258499eca467948aeb735adf113a527cd62bb0046147f0fd5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
