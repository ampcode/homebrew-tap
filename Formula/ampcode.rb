class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790884861-gc8feff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790884861-gc8feff/amp-darwin-arm64"
      sha256 "961fb852d8e05bb3dfefcbcdc1a062f2b788e06a74f061f47181ce3f8bb33904"
    else
      url "https://static.ampcode.com/cli/0.0.1790884861-gc8feff/amp-darwin-x64"
      sha256 "190ee3effe20ff0f10f593ca09dd77f438f946731789ac14c81ca89581ec8f3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790884861-gc8feff/amp-linux-arm64"
      sha256 "b9476aed953ee820cd502fd316e8a273200f4196a2a05cbe4b50d35b040e5086"
    else
      url "https://static.ampcode.com/cli/0.0.1790884861-gc8feff/amp-linux-x64"
      sha256 "c82bc00c79a106ed3ec3a3ca27797c5794b05f1aa05e6c5ad68c04064c383ef2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
