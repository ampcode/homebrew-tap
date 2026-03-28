class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774685248-g5957b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774685248-g5957b8/amp-darwin-arm64"
      sha256 "1c64a023b65b4637548859221144dcfb1d525b6f03d3a6a2f4a1be22c6c95a8e"
    else
      url "https://static.ampcode.com/cli/0.0.1774685248-g5957b8/amp-darwin-x64"
      sha256 "6d459ed243f3d7da1b064b10e8973728eb29074bba856c45f29b392a432d2d2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774685248-g5957b8/amp-linux-arm64"
      sha256 "8198473c8bac5c6f7382c60c349954e1136d2ef4ddbe02b9f5dfb7d76e070288"
    else
      url "https://static.ampcode.com/cli/0.0.1774685248-g5957b8/amp-linux-x64"
      sha256 "2a1f8c6ec18931d3ccf6fd1bcbe109ac5b1b5621d362b37594231aee6073ad7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
