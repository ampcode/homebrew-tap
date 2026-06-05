class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780634353-g4906a8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780634353-g4906a8/amp-darwin-arm64"
      sha256 "2abceb57eb5250831e5047191a5bbd77b16703ed2365dc820b2fd4050a795a36"
    else
      url "https://static.ampcode.com/cli/0.0.1780634353-g4906a8/amp-darwin-x64"
      sha256 "fac27c9caebc8609384e541dce5468336c7ebb9c9bc32421b083c7cdc8bda482"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780634353-g4906a8/amp-linux-arm64"
      sha256 "2d4be0acdc299d685f9116063cc29bd9063c045911e40fb5eeb3ea4e314bb95b"
    else
      url "https://static.ampcode.com/cli/0.0.1780634353-g4906a8/amp-linux-x64"
      sha256 "f1856160fa9812e9eb4137978067f13a8b46c10e046f14aa31a2a328e86b9a73"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
