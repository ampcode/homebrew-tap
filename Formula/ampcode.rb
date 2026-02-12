class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770871075-g144130"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770871075-g144130/amp-darwin-arm64"
      sha256 "39b1da98cdc657f4a42b36468e11e85009ab86b3febbb5711791a088013cd540"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770871075-g144130/amp-darwin-x64"
      sha256 "b045b02e8dcc1e52bba10c7aeccffc3cb2866e8e0d177f53e9e8a38a8bc23a58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770871075-g144130/amp-linux-arm64"
      sha256 "a2a4b04847de5ac9590c774ed923e7160d695326241bf63e9a3decdd4c72bb2d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770871075-g144130/amp-linux-x64"
      sha256 "b10d5abb890844b5de892bcb59464ef24ee83fb0c136a141cf9dd4d4eb70e6ff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
