class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781662319-g12a5cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781662319-g12a5cb/amp-darwin-arm64"
      sha256 "f0694f074c8a500bdb75ccda6c0c815d3e6b1315c31db866f701c027b37c3fde"
    else
      url "https://static.ampcode.com/cli/0.0.1781662319-g12a5cb/amp-darwin-x64"
      sha256 "8946e23c2fcd04b7b316eb3d20d36003e587b784713f3fde4c3ef2bc3c46a7d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781662319-g12a5cb/amp-linux-arm64"
      sha256 "64d03927a2932820a5d27bdc63c3c1139213b972383514306886695d0e4b8200"
    else
      url "https://static.ampcode.com/cli/0.0.1781662319-g12a5cb/amp-linux-x64"
      sha256 "9aa5948195b7bd9dda33acb3578222abb32b149625a360024c7023b9bb9fe757"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
