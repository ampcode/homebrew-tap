class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789646488-g024bbd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789646488-g024bbd/amp-darwin-arm64"
      sha256 "cebeefc11eafba33c65ff3c19d3a1ca243ba288d653b3224aff4f9fe1e5d5762"
    else
      url "https://static.ampcode.com/cli/0.0.1789646488-g024bbd/amp-darwin-x64"
      sha256 "1fb4dcdf26f6fccf9a7839419fa342ea84143d0b242ea9914a6fb7ed4123baa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789646488-g024bbd/amp-linux-arm64"
      sha256 "c4f4bef268720f224a2ef3cc9d7aef8284132c806f86fb7cd5797d40654330e1"
    else
      url "https://static.ampcode.com/cli/0.0.1789646488-g024bbd/amp-linux-x64"
      sha256 "16a55accfaa97c5efa03b93d613a966f1003c4afe428cc356736db0e729b0f11"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
