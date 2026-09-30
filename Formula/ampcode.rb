class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790760499-g417f44"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790760499-g417f44/amp-darwin-arm64"
      sha256 "4a984059190536ebd8df4e71e202e07a7159ac37861862b8096831d05b2978cd"
    else
      url "https://static.ampcode.com/cli/0.0.1790760499-g417f44/amp-darwin-x64"
      sha256 "368d4075d411650217afe4b7ebc148a23e0ccb0c47f455ebfaf14bd32cf2874c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790760499-g417f44/amp-linux-arm64"
      sha256 "494546608e85d5e00d84c1ad3a61584c142f0f63c5ee217217a472e34885c87b"
    else
      url "https://static.ampcode.com/cli/0.0.1790760499-g417f44/amp-linux-x64"
      sha256 "cbd5c66e3060bee9057fd5394d0e46e22c5754bcb61da1353b4aeb53daee4449"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
