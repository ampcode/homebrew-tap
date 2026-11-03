class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793692836-g3a602a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793692836-g3a602a/amp-darwin-arm64"
      sha256 "c94fbb3b5ead6c4dd3e048da9c55e9b57ce494f8e2033a073b47451972a46043"
    else
      url "https://static.ampcode.com/cli/0.0.1793692836-g3a602a/amp-darwin-x64"
      sha256 "6116cd8f0ff78cd4ec390508502361e3521d0562946c8d61b75e4b2269b684ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793692836-g3a602a/amp-linux-arm64"
      sha256 "5520a03bb674483f5982b8fbc52890bcbdbd58c4bebf00dcae57783b0fc740f6"
    else
      url "https://static.ampcode.com/cli/0.0.1793692836-g3a602a/amp-linux-x64"
      sha256 "4318b6c645df8650aa6a68dc6c88546a5052fa805ac935ff6db6bb455d2d8dba"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
