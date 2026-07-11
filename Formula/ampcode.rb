class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783757231-g462a93"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783757231-g462a93/amp-darwin-arm64"
      sha256 "1821572f502c3289f6ac7b39d8b3c2bdf0d4f8d787a03670ae3797609352b5b7"
    else
      url "https://static.ampcode.com/cli/0.0.1783757231-g462a93/amp-darwin-x64"
      sha256 "3fe19ce046ec1410b1959d5c4b6b31bfa1ae072070b3b3d9c40a34f05c31b91a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783757231-g462a93/amp-linux-arm64"
      sha256 "bc9e35863d876acbc4ea37666b5aff86c749cc2515797ca1a35ed6b113972952"
    else
      url "https://static.ampcode.com/cli/0.0.1783757231-g462a93/amp-linux-x64"
      sha256 "b8dae367bfe24d62a7fe07c4f588beec47835929ba92767ca2d138e7ff3d040f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
