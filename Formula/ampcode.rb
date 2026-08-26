class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787717482-gaaf55c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787717482-gaaf55c/amp-darwin-arm64"
      sha256 "8256e79d4bde6b4deccee0ae62a477848eb541a60b21f231bbcb281c20adf827"
    else
      url "https://static.ampcode.com/cli/0.0.1787717482-gaaf55c/amp-darwin-x64"
      sha256 "bdbd339961f1ea75acf04b7cb774404cbb02d353d8e8aff745bbec843a9c091a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787717482-gaaf55c/amp-linux-arm64"
      sha256 "78fe75c568fa13ba7a927a4c68bdf5446a9e8f1c922d712e9c64b97b3930c375"
    else
      url "https://static.ampcode.com/cli/0.0.1787717482-gaaf55c/amp-linux-x64"
      sha256 "1302985e7a770f2983f2648d2ae0d6565ff303727cce486ba98c8c6976f59059"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
