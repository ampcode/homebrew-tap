class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789171288-gd95a61"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789171288-gd95a61/amp-darwin-arm64"
      sha256 "9b3c6eb26ccaa94d3c0d016d0a82e48c6d79d117d0559854e4ae752d09b321eb"
    else
      url "https://static.ampcode.com/cli/0.0.1789171288-gd95a61/amp-darwin-x64"
      sha256 "b8eb8d6d1e18cd8f82409ca625b0329f467b674e7ff26251d6f803168ac83f26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789171288-gd95a61/amp-linux-arm64"
      sha256 "e5209e39643057c1239a83489281d5ac43c62f0a140e1e172533e463744e8288"
    else
      url "https://static.ampcode.com/cli/0.0.1789171288-gd95a61/amp-linux-x64"
      sha256 "f34fc8597be9b1b5e5658ab8ebb29a4f2597242cd1c998ab9b845ab424bc8cf4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
