class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789506200-g96317d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789506200-g96317d/amp-darwin-arm64"
      sha256 "37c7ca97643ab9c3b50a94c8929314797a89581e4e7360045d061b607d3bc7d6"
    else
      url "https://static.ampcode.com/cli/0.0.1789506200-g96317d/amp-darwin-x64"
      sha256 "b07d59e497f3ac1b33e47718c5582fce2147c1a4d2f175c4f4b1eeacb5c8fc82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789506200-g96317d/amp-linux-arm64"
      sha256 "a708f861fbc60cf3dbe9e3341e25ffbaba012b642c0a87e9a163a911fed62af4"
    else
      url "https://static.ampcode.com/cli/0.0.1789506200-g96317d/amp-linux-x64"
      sha256 "449ae0c42880e2494a0bd259326363a61f80733477987ccf1596d592c0ebc23a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
