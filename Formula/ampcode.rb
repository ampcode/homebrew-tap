class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776711768-g93a9e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776711768-g93a9e2/amp-darwin-arm64"
      sha256 "f58511b54b416f78ca7f0c6e8bf65cf2f101f8db7fdfb65f91ee2ad80b29d740"
    else
      url "https://static.ampcode.com/cli/0.0.1776711768-g93a9e2/amp-darwin-x64"
      sha256 "e183cfc00e44e1210ab7c928ebb6542a465ff82de2d469614eecf864fe1c44b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776711768-g93a9e2/amp-linux-arm64"
      sha256 "6370d3e0501fcacc9b58c3c5614f3d1235157d36174c68948c96061425ad782d"
    else
      url "https://static.ampcode.com/cli/0.0.1776711768-g93a9e2/amp-linux-x64"
      sha256 "c348028e03390f88bf0cb4277099ba7119bd72e8d51aa59f4f0c257aa30a973a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
