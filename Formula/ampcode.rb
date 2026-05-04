class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777914734-g2b025b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777914734-g2b025b/amp-darwin-arm64"
      sha256 "a6b1b551e804ef01dc64c0dde1f084a460d46035cd9cd186af709a0b575d1f6c"
    else
      url "https://static.ampcode.com/cli/0.0.1777914734-g2b025b/amp-darwin-x64"
      sha256 "894bae787760bfdf7387f8af2051e89965cb910f19d7d9aa194a2ebf3b659abf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777914734-g2b025b/amp-linux-arm64"
      sha256 "01cb8c30f99d7d587dfb4b823c5eccd7864699c8438ee3d0a7e6d2b6f7e38472"
    else
      url "https://static.ampcode.com/cli/0.0.1777914734-g2b025b/amp-linux-x64"
      sha256 "e0a0c387e482e78adc4f7dc6eb8363916568798fa6aa1bbc15b9b9ff16667643"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
