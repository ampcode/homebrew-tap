class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775554589-g101d13"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775554589-g101d13/amp-darwin-arm64"
      sha256 "c692de53781f652fad4e3aeae6b6bf4903838324b5439ea3a6afe72971966bd7"
    else
      url "https://static.ampcode.com/cli/0.0.1775554589-g101d13/amp-darwin-x64"
      sha256 "b2240013abb248a8548aba6fb777afc44af2102b09dfa03013d95faa14a5d78a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775554589-g101d13/amp-linux-arm64"
      sha256 "d7df1a9123c9a2ab1ab7df3f678e4281f980452c71da151b94254d6f18d8f1a1"
    else
      url "https://static.ampcode.com/cli/0.0.1775554589-g101d13/amp-linux-x64"
      sha256 "5ad1641260dcaa2706f05553d61b3f79665dd11cccbe215d9483d8bed5f1ce5d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
