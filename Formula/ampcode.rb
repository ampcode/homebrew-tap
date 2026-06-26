class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782508265-g75f711"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782508265-g75f711/amp-darwin-arm64"
      sha256 "e00dfee9caaf9ab9be9e9b51550727cf74ed323d1743e0b82a6e78215c50d630"
    else
      url "https://static.ampcode.com/cli/0.0.1782508265-g75f711/amp-darwin-x64"
      sha256 "558554a65ca1384cbd5311e6ee45e3fe3737530e7ad06efcf2a818368268fed3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782508265-g75f711/amp-linux-arm64"
      sha256 "a016fdcd225e7172ef3889bd523a7764bcb1dca93d17a807b0e4a7abcc7e9560"
    else
      url "https://static.ampcode.com/cli/0.0.1782508265-g75f711/amp-linux-x64"
      sha256 "5c2a3dbed005566bf64cbe8f9980f7b9c7d389435c7cbf2dfadb1932aa92a94c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
