class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786609604-g976012"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786609604-g976012/amp-darwin-arm64"
      sha256 "4d94a5788c82ad8787debbdcf55139fcbc9cbe912880cba0cc0691665d3bf5af"
    else
      url "https://static.ampcode.com/cli/0.0.1786609604-g976012/amp-darwin-x64"
      sha256 "01f6cf34d78b40edb5299e15f719e39f2ed67c5572392ea1dad4da200a0b8181"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786609604-g976012/amp-linux-arm64"
      sha256 "7fe06ebe4924a9260e06289199b03ebba310938ce27a30cdd3db0151dad4de06"
    else
      url "https://static.ampcode.com/cli/0.0.1786609604-g976012/amp-linux-x64"
      sha256 "9c460af3debda1363b6853c5cf63196a28f2023ad9b4045a6b93216597e382fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
