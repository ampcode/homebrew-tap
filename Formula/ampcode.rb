class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789654249-g3f5df6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789654249-g3f5df6/amp-darwin-arm64"
      sha256 "ce0ec8eb08abc58630aeddec7a4b61cba14dd51a57c05d3cb62772270f0e536c"
    else
      url "https://static.ampcode.com/cli/0.0.1789654249-g3f5df6/amp-darwin-x64"
      sha256 "b1510061ef845a6fa07af76e7dff3355aa5847df36727ceb7c41ecbda5d9a59d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789654249-g3f5df6/amp-linux-arm64"
      sha256 "a5856aebd24a58ecfcd068fb185265acf7c2a6dcc30c3679efa04775f44b40b0"
    else
      url "https://static.ampcode.com/cli/0.0.1789654249-g3f5df6/amp-linux-x64"
      sha256 "e9ea24e6ae4d70d14c438c148fc43bf54e50ec4926f09173a8d85eb4c31d2620"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
