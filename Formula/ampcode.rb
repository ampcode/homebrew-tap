class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788540855-g13ce21"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788540855-g13ce21/amp-darwin-arm64"
      sha256 "53615204f57261723d244e39e41cabd5b58eb09ee9a1be88fcb0ebaba8a5be97"
    else
      url "https://static.ampcode.com/cli/0.0.1788540855-g13ce21/amp-darwin-x64"
      sha256 "a15aaeb052299337dfd746aec17dc532c8bec03e517adb3c6ad158fe30dda327"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788540855-g13ce21/amp-linux-arm64"
      sha256 "561c2ef5c238da82b71dc62d1b849862ca757a723c37edfc4f84c686ae1bf9b0"
    else
      url "https://static.ampcode.com/cli/0.0.1788540855-g13ce21/amp-linux-x64"
      sha256 "e4645b3cc0e041d4a0ee7537d3f092111622e6e5abf0fc5350a0ee917ed25100"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
