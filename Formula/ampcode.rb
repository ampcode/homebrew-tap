class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777438903-g38f16c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777438903-g38f16c/amp-darwin-arm64"
      sha256 "a57686cf922e28339d47d9bbab9f7808ce52b42ea0b8df331c1c2771f87d7a5a"
    else
      url "https://static.ampcode.com/cli/0.0.1777438903-g38f16c/amp-darwin-x64"
      sha256 "38fb73d973940d3a509a57f20bf4e35cd15cf1859a0f5b0a319d4878f9e5e99a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777438903-g38f16c/amp-linux-arm64"
      sha256 "c841ddb726bf5891df95fbfd5ece7ecc300a483d7ad2b1566a461fe274964061"
    else
      url "https://static.ampcode.com/cli/0.0.1777438903-g38f16c/amp-linux-x64"
      sha256 "68afc241d3046db649be1cdcc5cecf483d948f6b5f919ed9658eb9f0d6a28ea6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
