class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780478921-g021c3e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780478921-g021c3e/amp-darwin-arm64"
      sha256 "e68fdd2c5716029e35b648fe92e63d98de6abd06a904083d0cdc566baeba507c"
    else
      url "https://static.ampcode.com/cli/0.0.1780478921-g021c3e/amp-darwin-x64"
      sha256 "7d2a6ee9b575044932e3af1ded9b593f910838b45f1b3315af51a4a52b9ebe2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780478921-g021c3e/amp-linux-arm64"
      sha256 "5b985039b53f78f4900424bd0d64b3ebc255ff220c99baf90c8228b16627c2d4"
    else
      url "https://static.ampcode.com/cli/0.0.1780478921-g021c3e/amp-linux-x64"
      sha256 "6445f61e38732d74f81721c76aa3e3e3d8f72e9aa494a9243aea1dd84429a258"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
