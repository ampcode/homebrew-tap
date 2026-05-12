class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778576011-gf17e9b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778576011-gf17e9b/amp-darwin-arm64"
      sha256 "a678ce6f16fcdca9a47f9a7f0678e713f6474bce36641268d75e8891117f40de"
    else
      url "https://static.ampcode.com/cli/0.0.1778576011-gf17e9b/amp-darwin-x64"
      sha256 "2289b5bdc6d96630f4b7b5c6313b81fb802da514b1e0b582f446919382045c7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778576011-gf17e9b/amp-linux-arm64"
      sha256 "fea08e204b6f5c0d4024c311a517eae3adea72e099df08b4fdf80972bddabbce"
    else
      url "https://static.ampcode.com/cli/0.0.1778576011-gf17e9b/amp-linux-x64"
      sha256 "c1b47eceb40f66bacfddd4b2b7093acff302f6edd5a43510a28b88125f406354"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
