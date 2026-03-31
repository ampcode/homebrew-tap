class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774987755-gb72e09"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774987755-gb72e09/amp-darwin-arm64"
      sha256 "31fb4388c6877104961b86153188816f3c8e340a27abd919007194656f89ac41"
    else
      url "https://static.ampcode.com/cli/0.0.1774987755-gb72e09/amp-darwin-x64"
      sha256 "ec56a69db2417035c04b62de18e301b5fa8e95c266215639a9e63c425a86e1ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774987755-gb72e09/amp-linux-arm64"
      sha256 "2f82e50c7304d28389e8289a483a4fad79ef21940a8eea6c30303cbd62f7c065"
    else
      url "https://static.ampcode.com/cli/0.0.1774987755-gb72e09/amp-linux-x64"
      sha256 "432dfeaf2b90383d795e0342b2b3d591836915f1b10a982afd9b7b5519fcbe90"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
