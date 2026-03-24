class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774382878-g2323ff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774382878-g2323ff/amp-darwin-arm64"
      sha256 "3aa018d8887ef3efc31395e135a8841d6a3fd3d625bc83419e7350c49ffbda68"
    else
      url "https://static.ampcode.com/cli/0.0.1774382878-g2323ff/amp-darwin-x64"
      sha256 "9a2560b133927bae12f1142ec4d9f1160621f4fa17d051f5e7a5f43d432bc40c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774382878-g2323ff/amp-linux-arm64"
      sha256 "444d1268c4e3ee7418ec68fe491bc153002a2bc13da9547f4d5c7caf523fb639"
    else
      url "https://static.ampcode.com/cli/0.0.1774382878-g2323ff/amp-linux-x64"
      sha256 "075c2b9ea754d1c2191d90efb9ff0ce47ef40199bd5192ff735153d5c00d4a7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
