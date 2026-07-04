class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783181941-g187572"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783181941-g187572/amp-darwin-arm64"
      sha256 "ecaddfaa2a6a18bd1ddc33fa5c694019ca2781df6baeb35b657f7ee057056cd6"
    else
      url "https://static.ampcode.com/cli/0.0.1783181941-g187572/amp-darwin-x64"
      sha256 "e0e2b84378627ac2de8806aefef67e1a4dfa7d249f0018162e893337d607b0a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783181941-g187572/amp-linux-arm64"
      sha256 "7a18591c46c81e78a39218800d5ec9368cb33bffcf95d767c6a28b768a986128"
    else
      url "https://static.ampcode.com/cli/0.0.1783181941-g187572/amp-linux-x64"
      sha256 "700993125a1c80c9d3ac4eb4a85a90f7808aff589decdb5a30c3d68281172885"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
