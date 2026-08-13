class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786623119-gdeffbb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786623119-gdeffbb/amp-darwin-arm64"
      sha256 "62d70d19b469a85abd97f8fdc80fde74a66cae37e21d0975d689b89d06e741a6"
    else
      url "https://static.ampcode.com/cli/0.0.1786623119-gdeffbb/amp-darwin-x64"
      sha256 "4aa0a7d1b3b3d47322dd79428f6fa7809f6ce4b6d6417e88065d3ae1460df46a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786623119-gdeffbb/amp-linux-arm64"
      sha256 "c4ddec3f836ac94d3b014f83c1ef2d7ee3a4778a47abd7527f7f24ba2c37e4df"
    else
      url "https://static.ampcode.com/cli/0.0.1786623119-gdeffbb/amp-linux-x64"
      sha256 "741ba034ca6557c3f957adf3cf9115c4466778c2e6ca90309b232792ba35ae4e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
