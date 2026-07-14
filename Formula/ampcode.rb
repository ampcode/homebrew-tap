class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784046309-g5bdc66"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784046309-g5bdc66/amp-darwin-arm64"
      sha256 "94a9be21b462c6b65e857397c7d67b32be8c61d4b961d027b17fbc96187fce30"
    else
      url "https://static.ampcode.com/cli/0.0.1784046309-g5bdc66/amp-darwin-x64"
      sha256 "1f989cc2b7d38ba43360006ebac8db564f46b35bc70275a81b974f53c9c11036"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784046309-g5bdc66/amp-linux-arm64"
      sha256 "9ce386a533177819c73ad7e6d23a527acba8323a76bd410ffec72bb7efec0ad4"
    else
      url "https://static.ampcode.com/cli/0.0.1784046309-g5bdc66/amp-linux-x64"
      sha256 "ab1260a82b95dc9d949a12d2392e88f443defc5979936b9e35b74b032f0016c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
