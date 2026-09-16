class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789543512-g51c0da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789543512-g51c0da/amp-darwin-arm64"
      sha256 "66c6b2d87bf1e453a073f689f081cb6215126ca86e590226f3bed1c68cc065d4"
    else
      url "https://static.ampcode.com/cli/0.0.1789543512-g51c0da/amp-darwin-x64"
      sha256 "1473e1b4188487253df0a105de416518f8d99c6472bb669c8bf82601acca1b92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789543512-g51c0da/amp-linux-arm64"
      sha256 "340ae321fc5c6f9b84e2764a3844b6538ed5c7d768428181abd3576ac2ddd5ff"
    else
      url "https://static.ampcode.com/cli/0.0.1789543512-g51c0da/amp-linux-x64"
      sha256 "77ccc2cfc3edb1b12c595d75dbcf68d1324b4fcb2c521b4059285279cb58ec96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
