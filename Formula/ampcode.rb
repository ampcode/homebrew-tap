class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776328112-g1a2339"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776328112-g1a2339/amp-darwin-arm64"
      sha256 "35bc67ba8e554c9e95ad56a0a2d959dc58cbd4015b8f2547eecd24d8c689c17f"
    else
      url "https://static.ampcode.com/cli/0.0.1776328112-g1a2339/amp-darwin-x64"
      sha256 "784e9ac897b93bd6752b5572ba982cb052f84aafb61cc75d6a8ca6abf348761c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776328112-g1a2339/amp-linux-arm64"
      sha256 "3953ba732d146d6ba9d324f3aa9d584de805aff65340b371e6e8a8887965dc36"
    else
      url "https://static.ampcode.com/cli/0.0.1776328112-g1a2339/amp-linux-x64"
      sha256 "eb93440f57ba5dfb5ef11fef517372beedae785d0b16b49f509971e11a4290d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
