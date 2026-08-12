class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786509137-g755e1f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786509137-g755e1f/amp-darwin-arm64"
      sha256 "28c45702ee48b1e2f6aa1ce8a587c28edc5b358e00972d9811bd8c71dcd2ae38"
    else
      url "https://static.ampcode.com/cli/0.0.1786509137-g755e1f/amp-darwin-x64"
      sha256 "db94027f7d6be941374c48e5bb3572a1c60646c5e2a01616bd31a65524b4809d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786509137-g755e1f/amp-linux-arm64"
      sha256 "2251c85b146dd74e833775512ffa4943ab71946b0d0137950e08d89c59e40f08"
    else
      url "https://static.ampcode.com/cli/0.0.1786509137-g755e1f/amp-linux-x64"
      sha256 "499a8aaa3ba286a840e450ceff7a0ec9f86aa51cc5c0b36c4d256f3ef59640d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
