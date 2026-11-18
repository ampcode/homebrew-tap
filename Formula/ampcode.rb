class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795017641-g2e763e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795017641-g2e763e/amp-darwin-arm64"
      sha256 "f3a499b37f18be827a9fd2f89987975d20237f14b86c387d6f9395497c2e24bf"
    else
      url "https://static.ampcode.com/cli/0.0.1795017641-g2e763e/amp-darwin-x64"
      sha256 "212ffc83173d26899b318e4e11c507a75247fb6d02c295febfa541ab05f7f682"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795017641-g2e763e/amp-linux-arm64"
      sha256 "67fef25b45f5768f7847ce02c955848011351d9036c8f3bde5507b4a0ecb498e"
    else
      url "https://static.ampcode.com/cli/0.0.1795017641-g2e763e/amp-linux-x64"
      sha256 "35fbf3bd0b676c4e956d7bc5315ef34ac94b6967c275c7c6120dd4734026ebe1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
