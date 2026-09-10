class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789012846-g065e0b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789012846-g065e0b/amp-darwin-arm64"
      sha256 "135b128091fab342e91db12758d05d847413c8684f429f1ef53d3d283430bda2"
    else
      url "https://static.ampcode.com/cli/0.0.1789012846-g065e0b/amp-darwin-x64"
      sha256 "e5e8a2bbbab0870318ceaae16b328e145efd2b2d536d0987a1bcd1c65c4a5662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789012846-g065e0b/amp-linux-arm64"
      sha256 "33a1a6349bd5d43f7f2f41c989213c34d9e19e7ee4c39464ccd452f392d24041"
    else
      url "https://static.ampcode.com/cli/0.0.1789012846-g065e0b/amp-linux-x64"
      sha256 "e1a3c9e3fb7bd1fab5dd38c5933f4b6b87b273ab947d5b80d29bca87264200d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
