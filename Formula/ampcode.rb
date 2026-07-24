class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784869297-gd5f395"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784869297-gd5f395/amp-darwin-arm64"
      sha256 "294950757fb8cd37ec6828473ae509c6729b5aa43b98f65dfbf3e931331076b7"
    else
      url "https://static.ampcode.com/cli/0.0.1784869297-gd5f395/amp-darwin-x64"
      sha256 "c3e989f2a86c5fd1464c55953e237c42d933b8fca986cb91ea8e0274106a0610"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784869297-gd5f395/amp-linux-arm64"
      sha256 "1506accbd4fae61fdb4324b1288a29df8b8902bbc89284986884948a62cc07eb"
    else
      url "https://static.ampcode.com/cli/0.0.1784869297-gd5f395/amp-linux-x64"
      sha256 "ff7d3a8d4dca78f94bed5c9ec87264e6d70e38c7b5d15eb3afcfc7d5afd22594"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
