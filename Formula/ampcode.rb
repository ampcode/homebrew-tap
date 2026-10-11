class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791691375-g3bdda1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791691375-g3bdda1/amp-darwin-arm64"
      sha256 "d9dee9450ab02dd03b5175eff18284b132fd089c6553b3c15e0cbfe47a133bb4"
    else
      url "https://static.ampcode.com/cli/0.0.1791691375-g3bdda1/amp-darwin-x64"
      sha256 "510ae159e084972dc9baa13477013f0cfc274fd26539da2c6200a33a7f7b27b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791691375-g3bdda1/amp-linux-arm64"
      sha256 "abaa681e3bd2d8b32744e683d2169bca2cba24915c13379502ac5751c38b95cb"
    else
      url "https://static.ampcode.com/cli/0.0.1791691375-g3bdda1/amp-linux-x64"
      sha256 "02e5930cc7e3c06ab99958b88209a95e59be35a0bc17bba5939fc9a5ad3dd497"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
