class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789272040-g266e71"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789272040-g266e71/amp-darwin-arm64"
      sha256 "8e68d10b769529929f1f9f4c1a9fd7e53fe7c0ee303087c16e6214a24f77b35d"
    else
      url "https://static.ampcode.com/cli/0.0.1789272040-g266e71/amp-darwin-x64"
      sha256 "0815dcbb641513463d049b88a91859132d243637532881425c0b445eb11ed9e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789272040-g266e71/amp-linux-arm64"
      sha256 "b4649f3286f5415656f83f93d15fe4515ed6e313e5f261518a81e5fcbdc385fe"
    else
      url "https://static.ampcode.com/cli/0.0.1789272040-g266e71/amp-linux-x64"
      sha256 "acc5180056a5c93963083162dca554aa240dee7978f40089efdd361261efeaf2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
