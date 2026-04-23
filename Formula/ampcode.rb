class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776975379-gfcf58c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776975379-gfcf58c/amp-darwin-arm64"
      sha256 "0e32dac2ceabff7587b14188c00ed9a9d905e3fefcf8ce1dea3fe805618db32f"
    else
      url "https://static.ampcode.com/cli/0.0.1776975379-gfcf58c/amp-darwin-x64"
      sha256 "c4ac635d4c7f39c58297d5b3f18eb6a40f714e11d41f676fcc0f0c6163bdba13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776975379-gfcf58c/amp-linux-arm64"
      sha256 "62a98bd44ade771f5c3ccfd764e9289b3559693b0e64aa3ba3788ead4beb8059"
    else
      url "https://static.ampcode.com/cli/0.0.1776975379-gfcf58c/amp-linux-x64"
      sha256 "b8b9d7c4613de75369727b71b3268031e3f68954d7f71acc8992ffe16b4dd3cb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
