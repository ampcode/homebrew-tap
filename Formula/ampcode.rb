class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776942277-g8574f3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776942277-g8574f3/amp-darwin-arm64"
      sha256 "d1b3a986ee30c4590e0649103dcae08bcd9a85bcdd7fcac02b622ead834ee27d"
    else
      url "https://static.ampcode.com/cli/0.0.1776942277-g8574f3/amp-darwin-x64"
      sha256 "cd7d9357e2b04a201c83d59b70f0b9305a43f68ed44a85381b0af71ca3d31025"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776942277-g8574f3/amp-linux-arm64"
      sha256 "9e2119ed9584e244ca6deef89109d63ab0ffc452e9219c5186762ede70e38411"
    else
      url "https://static.ampcode.com/cli/0.0.1776942277-g8574f3/amp-linux-x64"
      sha256 "76720c194ec248379d68b278b5d275bb25d8d930e71fa61c72c49faff042d227"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
