class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778402002-g32364f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778402002-g32364f/amp-darwin-arm64"
      sha256 "6fd4bdd6b0e52f237d64ffc6383a17c811550f9746eb7f65cca9b2cc5e26d8c2"
    else
      url "https://static.ampcode.com/cli/0.0.1778402002-g32364f/amp-darwin-x64"
      sha256 "58998beb213ae566b80de11c1495eeeed2f23fe2823ee8f4e8a038f310a38709"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778402002-g32364f/amp-linux-arm64"
      sha256 "47a7f4405e0c363f00a65ec4d6e81c83cad069908e7dcd0c85d30240257a470a"
    else
      url "https://static.ampcode.com/cli/0.0.1778402002-g32364f/amp-linux-x64"
      sha256 "10ce015b8d9a47c831bfe8cfa1bc56b6e3072fa74d14785d746986ad4155c5ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
