class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777871121-gba0d68"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777871121-gba0d68/amp-darwin-arm64"
      sha256 "0e1901f5de937b1b5b0fd798973f4976dd85d456a929793abac0983a58093694"
    else
      url "https://static.ampcode.com/cli/0.0.1777871121-gba0d68/amp-darwin-x64"
      sha256 "f3c576017e077e0a3a6953dfd83371db14baf965fe919793de2d8808958305d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777871121-gba0d68/amp-linux-arm64"
      sha256 "5990dba0c891e9da34e1bfefb8b3a521d9b7c59aae3e2c145d3f23e9a2ad994c"
    else
      url "https://static.ampcode.com/cli/0.0.1777871121-gba0d68/amp-linux-x64"
      sha256 "5040d96c9f78a302149e381f6fa45726ce4c102c80e622a0fa50575fa6ddb111"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
