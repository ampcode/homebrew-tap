class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786147648-g672f7d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786147648-g672f7d/amp-darwin-arm64"
      sha256 "cae23cc55c39515de666f949f29d84d7c41082ff5f748769c022443e0096ec84"
    else
      url "https://static.ampcode.com/cli/0.0.1786147648-g672f7d/amp-darwin-x64"
      sha256 "7525e2378d3ce845aaf9616a32f5a98cc807c98dc5803eb83f7e649526ab37c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786147648-g672f7d/amp-linux-arm64"
      sha256 "fbeb5fcf4fde33f0ed378d4b58942da66aeaec8487b27e0d37ecd475a4230af8"
    else
      url "https://static.ampcode.com/cli/0.0.1786147648-g672f7d/amp-linux-x64"
      sha256 "35e8356e0277835897d5ac49c2ec1e0a8118da506c9317122c9670d7a2b2b482"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
