class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788609637-g09e066"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788609637-g09e066/amp-darwin-arm64"
      sha256 "d791410329d4658a4a2270d1ca5770bd20d335d4feaa142a1e2b676d23ab05e4"
    else
      url "https://static.ampcode.com/cli/0.0.1788609637-g09e066/amp-darwin-x64"
      sha256 "4ab7ef643b5f336adb6d46741524fdfbc5722d53bf14f75dcbe989bcfd9d598f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788609637-g09e066/amp-linux-arm64"
      sha256 "bd572a9f5cc5434ef63bd15bfe9b1889bbdd4efb13c163be3f9dba6d00de248b"
    else
      url "https://static.ampcode.com/cli/0.0.1788609637-g09e066/amp-linux-x64"
      sha256 "2851fd81a8ac705089d14e0e4865a430e4cfb87910567fc223f211c9b88f955c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
