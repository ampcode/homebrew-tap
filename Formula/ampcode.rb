class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787776913-gb1a751"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787776913-gb1a751/amp-darwin-arm64"
      sha256 "c38e1b216839fb3a64df637bc8e9d458f51d1512f0e245dfd9fd1e6fef57d7e1"
    else
      url "https://static.ampcode.com/cli/0.0.1787776913-gb1a751/amp-darwin-x64"
      sha256 "f6f735f2aef6e6454ae0a0a9d7d3ee1ee096f90ee36f659c45a3a6e57ad9f156"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787776913-gb1a751/amp-linux-arm64"
      sha256 "f66e1a494ae00ad4043875d570e77cea80c33d3a3fbf00764fbd58002817d148"
    else
      url "https://static.ampcode.com/cli/0.0.1787776913-gb1a751/amp-linux-x64"
      sha256 "f61b457b2744e5938ef117d5fdaedb4ba76e82059b0a33a435499d8e60264463"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
