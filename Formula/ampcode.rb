class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776069373-g44b7c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776069373-g44b7c3/amp-darwin-arm64"
      sha256 "10db942ddada8526863fef11e3e1475073bc4ccfdd207adec09bbbcced595d28"
    else
      url "https://static.ampcode.com/cli/0.0.1776069373-g44b7c3/amp-darwin-x64"
      sha256 "01ee8a787658f8fea87a94c7c9a2d24b518013becda8e9bc40fc13d50b45a81a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776069373-g44b7c3/amp-linux-arm64"
      sha256 "06062bf61e46997d943193fef0c76a5298c37bf1c0860ef3de529a7903e7f15f"
    else
      url "https://static.ampcode.com/cli/0.0.1776069373-g44b7c3/amp-linux-x64"
      sha256 "18d1d3cd449d0b4a568999b8b6309c1b6240d2557b20dc1bbadf4a6ea7b3684a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
