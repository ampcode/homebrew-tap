class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790815121-g924425"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790815121-g924425/amp-darwin-arm64"
      sha256 "be96f43003ef2003598dcc589c616df3f19daebacc477465eaf0127dfdf450a8"
    else
      url "https://static.ampcode.com/cli/0.0.1790815121-g924425/amp-darwin-x64"
      sha256 "30e6b07bc8f3f3538c02a964c19bb42bdf19798473794d8c5e543ee55fa5340d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790815121-g924425/amp-linux-arm64"
      sha256 "8cf3e34093aeddfba5b0ae052d16dc4d4b401e253a7995ad5262482e30947214"
    else
      url "https://static.ampcode.com/cli/0.0.1790815121-g924425/amp-linux-x64"
      sha256 "68d7922993313596c3f8af29fe9d26d04ff24dcbd16d2c6e7337393aeac89a76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
