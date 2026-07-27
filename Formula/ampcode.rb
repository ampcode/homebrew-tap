class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785111528-g7dd942"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785111528-g7dd942/amp-darwin-arm64"
      sha256 "cf1d95d2446f80da57f93e240d085b05bc50dba00e1d3517827b2b35523db06a"
    else
      url "https://static.ampcode.com/cli/0.0.1785111528-g7dd942/amp-darwin-x64"
      sha256 "98f8087fcc75865c100ffa2a59bdf8d2d4a9e44414b1873e1f34f239998327eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785111528-g7dd942/amp-linux-arm64"
      sha256 "8c5f07254f6be642f94d6a7c2e5e44b0765a3339c02b813286a0480aed23b0e8"
    else
      url "https://static.ampcode.com/cli/0.0.1785111528-g7dd942/amp-linux-x64"
      sha256 "c098610d148b588b7dbf7b541da9513fb25b381edb26f07a27ed1a2246555427"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
