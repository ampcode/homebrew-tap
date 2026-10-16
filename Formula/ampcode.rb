class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792108872-gab0eb7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792108872-gab0eb7/amp-darwin-arm64"
      sha256 "0c43228c18ba21ee2bce38dc34fe1c61758e84d426c2bf6b52a87deec8bf58f2"
    else
      url "https://static.ampcode.com/cli/0.0.1792108872-gab0eb7/amp-darwin-x64"
      sha256 "fea071bfd27c78376820a49a467a4bf3c3c0c339b7a5dd117eb46f86e3820012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792108872-gab0eb7/amp-linux-arm64"
      sha256 "9d795f476363623d2a2b3cb58005cad5545b912b4cbc5d0554963312df0b061b"
    else
      url "https://static.ampcode.com/cli/0.0.1792108872-gab0eb7/amp-linux-x64"
      sha256 "fec5561850c1ddd106ba5cae82f0b91011486195486cbd5674e3f4dde3df5dbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
