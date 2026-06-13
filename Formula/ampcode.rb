class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781384294-g6cc4dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781384294-g6cc4dd/amp-darwin-arm64"
      sha256 "06d2307f16871e846a657ad352013414f75c9c1595c70bd0444c2e996b7d7cbc"
    else
      url "https://static.ampcode.com/cli/0.0.1781384294-g6cc4dd/amp-darwin-x64"
      sha256 "abd47dba3956a1e6afdc7729ebdc24cc6cdb77ccd566ba20f62be5044be38fef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781384294-g6cc4dd/amp-linux-arm64"
      sha256 "65781b3cbcf45abaaa112f929fc0fb9f5da8fa3d7022b827db90cba1f8dffbfd"
    else
      url "https://static.ampcode.com/cli/0.0.1781384294-g6cc4dd/amp-linux-x64"
      sha256 "f746bb5597bd853ac2ca86561fd3e59f9c92793aadac384a3c4f0d592fb4ae7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
