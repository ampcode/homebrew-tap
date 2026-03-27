class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774599058-g7bb23d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774599058-g7bb23d/amp-darwin-arm64"
      sha256 "6892017dfbe1aa4cd142acf9c3bfa992c702f1e199d43e358df6fad7884d5fb0"
    else
      url "https://static.ampcode.com/cli/0.0.1774599058-g7bb23d/amp-darwin-x64"
      sha256 "299eb9303c9e56672be15f0a17472db8f0561bc972b3950200451d28c26dcf3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774599058-g7bb23d/amp-linux-arm64"
      sha256 "50e2112c488aa959c86d03cfe7ff08b3a9f0917b90d35f4e2dfed2aa8ebc42f1"
    else
      url "https://static.ampcode.com/cli/0.0.1774599058-g7bb23d/amp-linux-x64"
      sha256 "d16ff6415a4d9c4cc0a82f555c0388784e7b09d24c8ce2c9a6a89e166dc15e14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
