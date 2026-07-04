class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783124438-g15510a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783124438-g15510a/amp-darwin-arm64"
      sha256 "0b8d557b206073550eadc8543e12e6de29bf21dd8fda532049c4499c8e472443"
    else
      url "https://static.ampcode.com/cli/0.0.1783124438-g15510a/amp-darwin-x64"
      sha256 "7ac4bca4d77e5c23298ca98cade523b0c5c432baebee06a7f5da5f164bba0833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783124438-g15510a/amp-linux-arm64"
      sha256 "ab11dacd74eee4651113ed871052f8573654262d592485dae86bc16dea6ae140"
    else
      url "https://static.ampcode.com/cli/0.0.1783124438-g15510a/amp-linux-x64"
      sha256 "c11e16dd3c4b01f04736989245ebdcc94c58f3db2ff01d7b5805a40e4842967e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
