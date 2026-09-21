class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789963237-g4ed0c7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789963237-g4ed0c7/amp-darwin-arm64"
      sha256 "047686c434d41bd3dc17d6141a9d15a2b053799247dfcfb1265e2e0b137d92fa"
    else
      url "https://static.ampcode.com/cli/0.0.1789963237-g4ed0c7/amp-darwin-x64"
      sha256 "7aa673c468f05e85e2c4c208932263e337f871d0f9a6b457cfc34fded3771839"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789963237-g4ed0c7/amp-linux-arm64"
      sha256 "1f599220f27b16128855bdd0d50106ca01bc5f1f9d50490bda352b2c83e8824a"
    else
      url "https://static.ampcode.com/cli/0.0.1789963237-g4ed0c7/amp-linux-x64"
      sha256 "f241072bcd34d6f377f0f2b2e87aa6a68503eca8e7104ba6f282a8e5dc947bba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
