class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781083315-g57aeeb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781083315-g57aeeb/amp-darwin-arm64"
      sha256 "0c2d7f586e15b494b6191ac37075e762655e530f681afadb7b9d0cf419526720"
    else
      url "https://static.ampcode.com/cli/0.0.1781083315-g57aeeb/amp-darwin-x64"
      sha256 "59f3bff72321cfa25f863e3dcda7719c79fd51fb09a48b3b015a55e70eb727ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781083315-g57aeeb/amp-linux-arm64"
      sha256 "5d46422b0d6cd79dbc451cabe40d11b0219f6d2fc35549211bdd1edb3554875e"
    else
      url "https://static.ampcode.com/cli/0.0.1781083315-g57aeeb/amp-linux-x64"
      sha256 "8ea38f92ea08044a2bc9fa37f1d01302f9080ff808f0db218a5ca7e7915c9e34"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
