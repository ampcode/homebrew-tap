class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781065697-g1abe86"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781065697-g1abe86/amp-darwin-arm64"
      sha256 "47e8d318a07cea21759f6c4efb3912f8821766f9516613d21f54ce464ca8e7bf"
    else
      url "https://static.ampcode.com/cli/0.0.1781065697-g1abe86/amp-darwin-x64"
      sha256 "960c937552e43feaa5d01dc8a60590fc66abaab22c77733a8eace09b62bac8c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781065697-g1abe86/amp-linux-arm64"
      sha256 "a40a5edf84e31d3992e4d5e403edaa878d11563541aa432f547ae196dbe00cce"
    else
      url "https://static.ampcode.com/cli/0.0.1781065697-g1abe86/amp-linux-x64"
      sha256 "15901baa55086f14473f6c3585565581a667b4d94d6536260abf70342c31b203"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
