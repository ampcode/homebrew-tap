class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784391370-g49c6a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784391370-g49c6a1/amp-darwin-arm64"
      sha256 "13ada60e0a1511426252f80a923d3da531144c0b5baed210e265a2ac2907f032"
    else
      url "https://static.ampcode.com/cli/0.0.1784391370-g49c6a1/amp-darwin-x64"
      sha256 "423c099c038621291c05062bd3d6be223b3efda62b2c7476ef3fc79a0ede7a13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784391370-g49c6a1/amp-linux-arm64"
      sha256 "8d1085f9e4745a81659a148d9d091f2cafa5e8eb83f339156eb99aa83934c15c"
    else
      url "https://static.ampcode.com/cli/0.0.1784391370-g49c6a1/amp-linux-x64"
      sha256 "d85338433b7981d1d2c1f5552a6aabda406ed0ae6750a237f48c409203f0e654"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
