class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795334436-g660843"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795334436-g660843/amp-darwin-arm64"
      sha256 "c55b51df824d14d6072c964279d74996213ca563d33ce7d3facaf63454f4f1f0"
    else
      url "https://static.ampcode.com/cli/0.0.1795334436-g660843/amp-darwin-x64"
      sha256 "9e553a95a29936c3edb06e6349a3563e28e6f36d253f038fee58a5951fd4ff39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795334436-g660843/amp-linux-arm64"
      sha256 "4b63e5ff13d4f8a259dbd60eac56b9c2326ffc023c978c9f3ed59cc763d5011d"
    else
      url "https://static.ampcode.com/cli/0.0.1795334436-g660843/amp-linux-x64"
      sha256 "004b84473f46805b5b6b932b18fe1b32252ec78b1f184a076939e5443cbc82d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
