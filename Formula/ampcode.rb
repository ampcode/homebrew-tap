class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784736939-gc13c1a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784736939-gc13c1a/amp-darwin-arm64"
      sha256 "2df053a4561ee66cd5fe5b858b8798bd1a51eba88328b77df4441ae1dbe10ff9"
    else
      url "https://static.ampcode.com/cli/0.0.1784736939-gc13c1a/amp-darwin-x64"
      sha256 "8fc3bf953b7bf65bc50e89978be543d49323168233d2d8ce316d0e90a36a70dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784736939-gc13c1a/amp-linux-arm64"
      sha256 "b34d935d78cf4d519d0f80c47d0626837b7f45ebf688303cab7080f1dc512cb0"
    else
      url "https://static.ampcode.com/cli/0.0.1784736939-gc13c1a/amp-linux-x64"
      sha256 "ca5384c90a67bf628e7f2f7e73b882560e4e20aa5e7e74675323fe86b091b92e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
