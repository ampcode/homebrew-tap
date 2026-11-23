class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795449633-g4295dd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795449633-g4295dd/amp-darwin-arm64"
      sha256 "fb3ff654295395b3e22c217a1ef87d4f7d8bd6a917ccefa69498dfe89d40558e"
    else
      url "https://static.ampcode.com/cli/0.0.1795449633-g4295dd/amp-darwin-x64"
      sha256 "d3af95ad30d10373406a4b466e531e48da101bdf32e4f49aff1c6cd0185c7447"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795449633-g4295dd/amp-linux-arm64"
      sha256 "8163909f282da6d99813056b4670b06dce9e5c0461b91a27a33b1159f27a6a0b"
    else
      url "https://static.ampcode.com/cli/0.0.1795449633-g4295dd/amp-linux-x64"
      sha256 "4772e0080966dcb36daf3d17f13a500761d0f4596a366f87e6ddbac796bbdf8d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
