class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783142009-gf51f40"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783142009-gf51f40/amp-darwin-arm64"
      sha256 "2ab14f104013bc10c101daf52e4a1e13fc3a856116dd9f444a6fec5472908342"
    else
      url "https://static.ampcode.com/cli/0.0.1783142009-gf51f40/amp-darwin-x64"
      sha256 "e02bbdeae75927a7bb61514176ec546941d856ff7cf6192c55e8bee2821d10e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783142009-gf51f40/amp-linux-arm64"
      sha256 "2f53ea124074afe6d345dcbb0a757c020168b567720de08f4c44ededca4c2553"
    else
      url "https://static.ampcode.com/cli/0.0.1783142009-gf51f40/amp-linux-x64"
      sha256 "5d0eedd3d81ad34d2bdfd20a08021f17fec45f589831c585075075de26dd2c8c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
