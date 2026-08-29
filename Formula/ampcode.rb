class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788019230-g3c53e0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788019230-g3c53e0/amp-darwin-arm64"
      sha256 "2d34b625cb11d3f2f6d0af4753a32f5ddf706ef8fe4eccbd1e450eae5e36b901"
    else
      url "https://static.ampcode.com/cli/0.0.1788019230-g3c53e0/amp-darwin-x64"
      sha256 "b3aefcb2c3613de0a342e73cdfcc3a3805b89eb488a8a273b1e53cf32ad23b8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788019230-g3c53e0/amp-linux-arm64"
      sha256 "2981b4f68d5c07729a592b6166a861077503ccf855fe76e7d9e568dfb0e74628"
    else
      url "https://static.ampcode.com/cli/0.0.1788019230-g3c53e0/amp-linux-x64"
      sha256 "5258880c4aca882aee4816251ef0213f26156a39d98982027b2b947ab606486f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
