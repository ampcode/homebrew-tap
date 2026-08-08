class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786176663-g712bf4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786176663-g712bf4/amp-darwin-arm64"
      sha256 "4ec744df7b81e4efd6da704d128bb3813fc73ba6b7bdb4e3dc0d249c6e8722f6"
    else
      url "https://static.ampcode.com/cli/0.0.1786176663-g712bf4/amp-darwin-x64"
      sha256 "18efce1809c574cd7bf1e1e384e421b98ff603f0428e46e86603371e59e855cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786176663-g712bf4/amp-linux-arm64"
      sha256 "cf46c6733cc31df46ff6fe5679b556d1fa9315ddb90d36fbf2488914887ffa5a"
    else
      url "https://static.ampcode.com/cli/0.0.1786176663-g712bf4/amp-linux-x64"
      sha256 "18577fac16bedd16748b572777cd658e615d9fc32e72ef78ad05214697d30e9b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
