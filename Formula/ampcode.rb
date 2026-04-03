class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775217971-gac99d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775217971-gac99d7/amp-darwin-arm64"
      sha256 "0d61b4c48c8059cd60109aaefd1bdba97f4b8e61b8d71b4dcea33257fe533ebf"
    else
      url "https://static.ampcode.com/cli/0.0.1775217971-gac99d7/amp-darwin-x64"
      sha256 "ff392edf9592881918a18cda2258fc197818abdccb4fb74bd39311c0e30be03c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775217971-gac99d7/amp-linux-arm64"
      sha256 "cc6f3b3db6d31fa97f44fe170288769bfe9c793c302506a9ea36706d18807fb6"
    else
      url "https://static.ampcode.com/cli/0.0.1775217971-gac99d7/amp-linux-x64"
      sha256 "551afee68957c93d373b93327086cbbd36d4337c874172b4a403ec7ed5c1ae42"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
