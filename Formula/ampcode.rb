class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790222439-gb72ec4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790222439-gb72ec4/amp-darwin-arm64"
      sha256 "9dd4c1dd97747dd71a153d46c36578c997660713603c88cd64b4b124342320fa"
    else
      url "https://static.ampcode.com/cli/0.0.1790222439-gb72ec4/amp-darwin-x64"
      sha256 "21ca7284d4c0f15be9c3b1e8046bc43f26db2336e24d8cda750ec13fe7a9a2c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790222439-gb72ec4/amp-linux-arm64"
      sha256 "3fd0cd9f7e9270be1c8cf5ce1168f260b0969844c84c21e38a585c917b722901"
    else
      url "https://static.ampcode.com/cli/0.0.1790222439-gb72ec4/amp-linux-x64"
      sha256 "543e870d5e88f36de08fef0028902aae0e9274f7fd85a832be47da4fc6ad07b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
