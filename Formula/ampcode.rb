class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776949187-g6c0bed"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776949187-g6c0bed/amp-darwin-arm64"
      sha256 "e826287c18a6486be5c7ecf3b9ac69d683c38e231ce5a54ab1f4f66a15b9c892"
    else
      url "https://static.ampcode.com/cli/0.0.1776949187-g6c0bed/amp-darwin-x64"
      sha256 "0d63a8b28fb34f8ec8aca2f403c2f3fbd559816a9d5e250218bbdcab0d315964"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776949187-g6c0bed/amp-linux-arm64"
      sha256 "68e554702a12feac276a39d3cee5bae84de30e73c7777693653423d245c908d9"
    else
      url "https://static.ampcode.com/cli/0.0.1776949187-g6c0bed/amp-linux-x64"
      sha256 "947c9d99bb0889ea99be9d112f4bc356a6e0af82329115037a8e22b3b8bd7395"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
