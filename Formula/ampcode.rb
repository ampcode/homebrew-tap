class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791047548-g5bacb8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791047548-g5bacb8/amp-darwin-arm64"
      sha256 "53f85221f56f4dc199a7837e106fac434dc86644ef0f6f878b66b82a37a11b65"
    else
      url "https://static.ampcode.com/cli/0.0.1791047548-g5bacb8/amp-darwin-x64"
      sha256 "546458e53ef5cd65211b938cdc8c10aa48de3099940af74b5365b5dbb518e8bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791047548-g5bacb8/amp-linux-arm64"
      sha256 "74bf59ce49086d870afe38892c665684518b4de21665403fc44958553510eb88"
    else
      url "https://static.ampcode.com/cli/0.0.1791047548-g5bacb8/amp-linux-x64"
      sha256 "6d9c1d66bcd90dec30c9e70b01d696ad17d18904802691d12620d240b8b2ec32"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
