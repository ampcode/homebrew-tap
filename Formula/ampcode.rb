class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777870053-g2f2739"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777870053-g2f2739/amp-darwin-arm64"
      sha256 "d2fca5ecc8b32b10e1d30f275a04b0830ba27ec9ddce7f62919172cd53b52728"
    else
      url "https://static.ampcode.com/cli/0.0.1777870053-g2f2739/amp-darwin-x64"
      sha256 "8d4c7cfeb6d82135b21234c435da335cdb699db75591c8e863c59d0b98c70549"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777870053-g2f2739/amp-linux-arm64"
      sha256 "ed4540874003b5975992808cde5e38262672a71fccaf2bfe011a6fc854aa362e"
    else
      url "https://static.ampcode.com/cli/0.0.1777870053-g2f2739/amp-linux-x64"
      sha256 "5545211846cfc5642290522ca0f8b5f8e5c43f746a5f58b2d47304a48d8e27cb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
