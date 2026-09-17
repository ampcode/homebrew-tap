class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789675234-g2899fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789675234-g2899fe/amp-darwin-arm64"
      sha256 "48ce7258cad1cabd96939c981d9f24e8fb280b9b3f8469b453435f1a9b410788"
    else
      url "https://static.ampcode.com/cli/0.0.1789675234-g2899fe/amp-darwin-x64"
      sha256 "b358171573b0631febd4d3dba90fd561b89c152194b022e65f4319e4b19f993b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789675234-g2899fe/amp-linux-arm64"
      sha256 "3a240c258782bd3e503db1a9b0e08acf6497222465d1bc9b8c4283adee0dc72b"
    else
      url "https://static.ampcode.com/cli/0.0.1789675234-g2899fe/amp-linux-x64"
      sha256 "f351217dac739614b4d9b3eacad728ce6d61647ab1f5d4a4de44d99aba6598ee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
