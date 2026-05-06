class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778080581-g3b0b56"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778080581-g3b0b56/amp-darwin-arm64"
      sha256 "e363536842e3c5ac5f51e1d94c7654613176f7b49944662e335fec914c6d5017"
    else
      url "https://static.ampcode.com/cli/0.0.1778080581-g3b0b56/amp-darwin-x64"
      sha256 "6b2f66946cdf5ff033ff9f1636c1aac7951151b236b6b1bf9253b65b4a942d36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778080581-g3b0b56/amp-linux-arm64"
      sha256 "f517e7ec09e1dcbf28b556d441a5967e7fda0eef869d16be8fb0517e11b2542c"
    else
      url "https://static.ampcode.com/cli/0.0.1778080581-g3b0b56/amp-linux-x64"
      sha256 "fbe30f0fe9456d5b2a6af628009f0db2add65f78ba787c99548ee659a617c956"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
