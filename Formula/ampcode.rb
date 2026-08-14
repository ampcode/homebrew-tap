class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786715939-gc505dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786715939-gc505dd/amp-darwin-arm64"
      sha256 "43ce0f3c105834932804c2a40995d21a9b2d785cb3c71d4fd2818200d7d41b8e"
    else
      url "https://static.ampcode.com/cli/0.0.1786715939-gc505dd/amp-darwin-x64"
      sha256 "bbfb9ba66db52cd2b1b8b37c7186418b5d46bbb090f8f69077c988a3f668fa9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786715939-gc505dd/amp-linux-arm64"
      sha256 "9d132b97dc28ce6f8c7b171a9142df9fa71c64f74ed8fae2f5151f22cfb78bdb"
    else
      url "https://static.ampcode.com/cli/0.0.1786715939-gc505dd/amp-linux-x64"
      sha256 "db990cb0ef63d580a4c87d88e34331a05f27530621b9ec0ef64f5fb3de8d9950"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
