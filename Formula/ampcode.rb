class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788206450-g69fb1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788206450-g69fb1a/amp-darwin-arm64"
      sha256 "68e2ce23f186df58902ae3205d3e6f8317db3dd6c03013a15d6ba359b2f56707"
    else
      url "https://static.ampcode.com/cli/0.0.1788206450-g69fb1a/amp-darwin-x64"
      sha256 "16dbcc1f634b63e2c133420db1ebf735a44b1bedd7d41b8affad194e8f207ad7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788206450-g69fb1a/amp-linux-arm64"
      sha256 "a0243e25b390e66d4c4792b351d16d44ac8adeed99b93b8d30e59c2668738caf"
    else
      url "https://static.ampcode.com/cli/0.0.1788206450-g69fb1a/amp-linux-x64"
      sha256 "e570d2a9654c97476c706a3bf1e0d33603f491762eeef8d79fe6d80c679a0ede"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
