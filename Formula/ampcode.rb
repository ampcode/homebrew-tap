class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784177987-g5d539a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784177987-g5d539a/amp-darwin-arm64"
      sha256 "c787d53c5bb585f80ed2cb5bd2f6548646b725953eeb1068761f3a10cd63120b"
    else
      url "https://static.ampcode.com/cli/0.0.1784177987-g5d539a/amp-darwin-x64"
      sha256 "09fdf46b3d09c0b6f98e007a2c522d13c7ed724546de1788ceb092d35ee2dfcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784177987-g5d539a/amp-linux-arm64"
      sha256 "ee45bb78cd0c08529bf505c64b8cf859b9989257ffe1ba1d9ac158fd90b6108e"
    else
      url "https://static.ampcode.com/cli/0.0.1784177987-g5d539a/amp-linux-x64"
      sha256 "934fe29338b21d5c0c49341d481e05b38462ca9cea2553624c9a0603cd7d1370"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
