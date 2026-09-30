class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790798464-g1c0876"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790798464-g1c0876/amp-darwin-arm64"
      sha256 "6cc3f8a65931c06f08949fe2e38f217c9894c7a6f84bab925e8a957eeb9c3be5"
    else
      url "https://static.ampcode.com/cli/0.0.1790798464-g1c0876/amp-darwin-x64"
      sha256 "7d9ed38aebc70823db4486bcd38cdf9d7efd1ad7ede49ceabcc9585937170cc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790798464-g1c0876/amp-linux-arm64"
      sha256 "697e58e65cd032109f347ad12df7cf431fb8d1722f1a2c725fbc7eb527dd85a3"
    else
      url "https://static.ampcode.com/cli/0.0.1790798464-g1c0876/amp-linux-x64"
      sha256 "d75c51d71e29675c76e3f91cd4cb8abd8c0f45c4612bb1863ad126b85053f3de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
