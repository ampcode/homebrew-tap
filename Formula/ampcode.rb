class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781446468-g05b41b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781446468-g05b41b/amp-darwin-arm64"
      sha256 "b4bdc2f1c19869c1502cf788cb47ebe20f179b2205dbf8f9a71c4d9f40c772c9"
    else
      url "https://static.ampcode.com/cli/0.0.1781446468-g05b41b/amp-darwin-x64"
      sha256 "45a9629ee45201936a9d23c2edab9950800cbc9cee1cf463280c8503cf4cd09d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781446468-g05b41b/amp-linux-arm64"
      sha256 "d492d9395f0c6b755970372a4c862ccd1204bc3776c0c59a6dbd8e72c8ff09e1"
    else
      url "https://static.ampcode.com/cli/0.0.1781446468-g05b41b/amp-linux-x64"
      sha256 "bfb995e6ee19cb39d8bcae7bcac96bc2611f908ecc786293a0cc8911ec3dd9c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
