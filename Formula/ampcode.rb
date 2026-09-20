class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789891239-g7f27b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789891239-g7f27b8/amp-darwin-arm64"
      sha256 "eeee35651640214fe7d62087eb5987ee2f2bf2b59a743d23fb76a5ac03d2cf14"
    else
      url "https://static.ampcode.com/cli/0.0.1789891239-g7f27b8/amp-darwin-x64"
      sha256 "28e3b7bfa9c90519d80e14da00ffa434487fbdad891d9040bccc0cbd6e90543b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789891239-g7f27b8/amp-linux-arm64"
      sha256 "f8458539f71fbe5970e57bfcf34e5bd034deea532ca577770c15131e79a757a2"
    else
      url "https://static.ampcode.com/cli/0.0.1789891239-g7f27b8/amp-linux-x64"
      sha256 "bd0b513bb61abc9046c22bdc4861c44062ab72fbc4c66989a930ba7c5b092b54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
