class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776715918-g93a9e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776715918-g93a9e2/amp-darwin-arm64"
      sha256 "6cd7d9145560863b1940c25c4a919c34129419bb2dc6f0f27c12cdbd281cc61e"
    else
      url "https://static.ampcode.com/cli/0.0.1776715918-g93a9e2/amp-darwin-x64"
      sha256 "4080ae706dbaa9e380c390b80303d0a37d5c67467aad82cbaf44adbdf78de1ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776715918-g93a9e2/amp-linux-arm64"
      sha256 "d84e29be43cbc8ac7ff1d19159e816aac1e6812a3374a8f96ec8100dfc8ff031"
    else
      url "https://static.ampcode.com/cli/0.0.1776715918-g93a9e2/amp-linux-x64"
      sha256 "c2404e49bf34b5bd629b5a801cc143d979d7cfd0849345c1b05f2c3bc91e5669"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
