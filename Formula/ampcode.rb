class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793750459-gc8c68b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793750459-gc8c68b/amp-darwin-arm64"
      sha256 "e49d462ed2cc2f2d946598667b62932dfb12f804ec593df1c7fd24aff84f2c20"
    else
      url "https://static.ampcode.com/cli/0.0.1793750459-gc8c68b/amp-darwin-x64"
      sha256 "061631751fdb9eb12956fad361ddcedbb1bdb1ed4ca8ef4b199b4bb65fa217f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793750459-gc8c68b/amp-linux-arm64"
      sha256 "5e2671c8b6a014c3fd5c17302c51cbd1664bf03f52ec52fa760dd131f2d0ae83"
    else
      url "https://static.ampcode.com/cli/0.0.1793750459-gc8c68b/amp-linux-x64"
      sha256 "08b997b2cc8b0643ae4d55357035e6845b00bd1dbd8d71f717f499643f4ad440"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
