class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779525469-ge68d87"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779525469-ge68d87/amp-darwin-arm64"
      sha256 "8008364d54fe7f18c1f7f30eaeed8eeaa94139894b922c57508d9981ad37259e"
    else
      url "https://static.ampcode.com/cli/0.0.1779525469-ge68d87/amp-darwin-x64"
      sha256 "098a6858e93cddb71384f2cf700847feea96a9cb2428f49c757d97da44da4d36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779525469-ge68d87/amp-linux-arm64"
      sha256 "59b54e64e917bf5a2d931e2689bb17a4fd9ded59a8338ad3cf0d5a153f82aca9"
    else
      url "https://static.ampcode.com/cli/0.0.1779525469-ge68d87/amp-linux-x64"
      sha256 "0af5bf73b8ad650d4dd993c94374861b8bdabd048c898151be0ef173431530af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
