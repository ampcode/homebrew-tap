class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784696449-g4b3fcd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784696449-g4b3fcd/amp-darwin-arm64"
      sha256 "4c714add2746bf753327cd34e751248929a1769a9388ff4a947289255d7af7cb"
    else
      url "https://static.ampcode.com/cli/0.0.1784696449-g4b3fcd/amp-darwin-x64"
      sha256 "8181ab0e0fed7ca075538c0f4d0ba272329960ca9e5193e36edbf6783273419f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784696449-g4b3fcd/amp-linux-arm64"
      sha256 "62bf546f12bb2fe680e50c6975be79cdff9a6bc24b0e1a30f6d03132980d4af7"
    else
      url "https://static.ampcode.com/cli/0.0.1784696449-g4b3fcd/amp-linux-x64"
      sha256 "b47771b49d30e3ad34d882171297a116f09321f27641cc8294a301e1775c8bff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
