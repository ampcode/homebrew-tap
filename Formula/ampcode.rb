class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787645454-g09462f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787645454-g09462f/amp-darwin-arm64"
      sha256 "eacb0eb7a2595840ccb68fe7d0437cdcf005d71c1a8482db7067a83196238c65"
    else
      url "https://static.ampcode.com/cli/0.0.1787645454-g09462f/amp-darwin-x64"
      sha256 "bb833524d72d7fc3a51e50929cf090c9b5341bca431f116d19f01ad7ead8b8e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787645454-g09462f/amp-linux-arm64"
      sha256 "4400a700f1d4b37c64505de0e197dd85556b9652405ab1d99c853b3fd4b9a9bb"
    else
      url "https://static.ampcode.com/cli/0.0.1787645454-g09462f/amp-linux-x64"
      sha256 "4a5c641ab5f1c6949b79a0b9864c5c302036e690a30c137def483e783b85c9b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
