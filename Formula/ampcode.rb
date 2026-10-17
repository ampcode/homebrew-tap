class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792254886-g14d018"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792254886-g14d018/amp-darwin-arm64"
      sha256 "e62d8e55f3f5f4b519cee7471a8a5b2b87817bfb4c8c1ecb1cd7ffeb3547ce50"
    else
      url "https://static.ampcode.com/cli/0.0.1792254886-g14d018/amp-darwin-x64"
      sha256 "a1908a5819ff544e6c60868f2c753267de7a508aa96f88f527cf1506147d6a14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792254886-g14d018/amp-linux-arm64"
      sha256 "89b986810dcc5d495d454ef118f399146a207341ad7a4e77d3e3d23fa2727e26"
    else
      url "https://static.ampcode.com/cli/0.0.1792254886-g14d018/amp-linux-x64"
      sha256 "8c9208ec85d59e0e8b3032b48623d0469c616070bb1ce1fa71402d6ae17d7320"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
