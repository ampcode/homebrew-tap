class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790654442-g4d5eed"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790654442-g4d5eed/amp-darwin-arm64"
      sha256 "09e88d434bb5a5743527ff2543552d416325adba887ce67468d55e7ebe2d6a11"
    else
      url "https://static.ampcode.com/cli/0.0.1790654442-g4d5eed/amp-darwin-x64"
      sha256 "9e960b5ab7ce0860fc77e50cbc2baec11d0ea939502157b6dbe6f6da767a2f1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790654442-g4d5eed/amp-linux-arm64"
      sha256 "dead744723211f86e999520fd455bddcc2154e9ed4fcd2e51d69e59f80d4d784"
    else
      url "https://static.ampcode.com/cli/0.0.1790654442-g4d5eed/amp-linux-x64"
      sha256 "cead1cd6d2c99a3b6bf4d5f7bb50464c8d50c61048753c285bd00b5963dd3daf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
