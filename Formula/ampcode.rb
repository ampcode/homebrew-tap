class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775751886-g25158b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775751886-g25158b/amp-darwin-arm64"
      sha256 "2ccd839576b348579359c4cfe9feece7704833b7777b5c16c875497f3007f6b2"
    else
      url "https://static.ampcode.com/cli/0.0.1775751886-g25158b/amp-darwin-x64"
      sha256 "9d1da79546e6d7d7d3c49df24911bd1ea8ea74c33346308e4ec767369187729e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775751886-g25158b/amp-linux-arm64"
      sha256 "d5a559bcc3b1667514127def75979935cce0e063679c50c09112e8bc751e3bf9"
    else
      url "https://static.ampcode.com/cli/0.0.1775751886-g25158b/amp-linux-x64"
      sha256 "069e277f1bb07b5b7947bd2f48d8b5e659ba28a6705158ed0faa315cea46daa5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
