class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793104576-gc52692"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793104576-gc52692/amp-darwin-arm64"
      sha256 "6b62ed9eec81f9802ad27276db4e52aa929f5b6aaeec93928bfce2f202f89a37"
    else
      url "https://static.ampcode.com/cli/0.0.1793104576-gc52692/amp-darwin-x64"
      sha256 "ad9ee2d48bb77384aff58cbbd41a0f387b5f80f9e4c2a01a07884a33d1b34e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793104576-gc52692/amp-linux-arm64"
      sha256 "28dcaa9b4bc678932bf0e179a99bfd6aa345148bc42e430b3a419d3333a1af91"
    else
      url "https://static.ampcode.com/cli/0.0.1793104576-gc52692/amp-linux-x64"
      sha256 "fdc30a88aeca5aad920ee32af6e87c9875e5e055497911183ed0265f49a53fa0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
