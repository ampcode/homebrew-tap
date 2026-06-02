class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780443895-gb1eab3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780443895-gb1eab3/amp-darwin-arm64"
      sha256 "d03e2017ed70c88e3c083daf2062cd649a6e6688afef64b79ffe7fdbb2eef788"
    else
      url "https://static.ampcode.com/cli/0.0.1780443895-gb1eab3/amp-darwin-x64"
      sha256 "261942ee61f7bc82b96738ad5ae73eb46527da83c8a2c110968e6fef78b5c199"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780443895-gb1eab3/amp-linux-arm64"
      sha256 "4c16d66a626704b959a9a265ab3c613e417441ff3e59a5dfae975da9402bd2e2"
    else
      url "https://static.ampcode.com/cli/0.0.1780443895-gb1eab3/amp-linux-x64"
      sha256 "21fb483d4c0e677e9ed37faea599f6bf4b8419777a09da8eec2892287451c061"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
