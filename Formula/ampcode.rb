class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777162169-gff4795"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777162169-gff4795/amp-darwin-arm64"
      sha256 "f08a9812b922f1137a3f4a964da0383a8c18b43ef5ec088ae958978a2208a999"
    else
      url "https://static.ampcode.com/cli/0.0.1777162169-gff4795/amp-darwin-x64"
      sha256 "5aec64710b826d9603e665026a97ce0fd765456b2a3989ad106ef16c2b586d2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777162169-gff4795/amp-linux-arm64"
      sha256 "24885e0ebd960e845fc151ed10cfb65e48eaf42ff8b93a7f05b30aae05b1bb0f"
    else
      url "https://static.ampcode.com/cli/0.0.1777162169-gff4795/amp-linux-x64"
      sha256 "723ebb2d9a956029b7a1bf7ae8c8d3ce3d98f6105d9974ef9818dcfcf25a06e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
