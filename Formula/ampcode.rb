class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775031755-gf66c2b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775031755-gf66c2b/amp-darwin-arm64"
      sha256 "6260ece4a828c48b029d5af7d317230cd3d90db64137c9effb75a8fcc7186f41"
    else
      url "https://static.ampcode.com/cli/0.0.1775031755-gf66c2b/amp-darwin-x64"
      sha256 "a7c1066c7119139cee1150c8564b1dcf1b791a4ff305c877d7ee62926fc30717"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775031755-gf66c2b/amp-linux-arm64"
      sha256 "b6a55bdbce62f5c41813a5e5303e717c5c614f9162da268fc2419f3cd479a840"
    else
      url "https://static.ampcode.com/cli/0.0.1775031755-gf66c2b/amp-linux-x64"
      sha256 "c309cfefdc4c8af57a1812a5b5468a895db971570079cab92c650c8c415fb704"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
