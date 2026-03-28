class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774656301-g0342e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774656301-g0342e2/amp-darwin-arm64"
      sha256 "b9e435369373e298a9a6611551f6851ad86a2a41922cf3d3bc9f8f1530c8ed8b"
    else
      url "https://static.ampcode.com/cli/0.0.1774656301-g0342e2/amp-darwin-x64"
      sha256 "f23989076bc39af976496a017866e3772bb15677ad6e9b64019fa5adc78254c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774656301-g0342e2/amp-linux-arm64"
      sha256 "88445a408bec0a8d76d6a3cfeffacd584e9cb8560c67ebf904f38d3e02798647"
    else
      url "https://static.ampcode.com/cli/0.0.1774656301-g0342e2/amp-linux-x64"
      sha256 "f73c61b40888ccb5e58cd8fa2654b7000e2617b7f439eab3a42d47cd6a7322ca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
