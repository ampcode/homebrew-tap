class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794224189-g2d19a9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794224189-g2d19a9/amp-darwin-arm64"
      sha256 "77c3d661119ae2756827e3e07470e1fbfcbd3a4902c7601f4821a27f444638ec"
    else
      url "https://static.ampcode.com/cli/0.0.1794224189-g2d19a9/amp-darwin-x64"
      sha256 "18df72936c67933ca9254f679c2e6f6cfaa9be391ae00a13aef4c8faa7608d0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794224189-g2d19a9/amp-linux-arm64"
      sha256 "89e3a7701b7e6e01f132c07612674bffe9d45243dc07cb0d654d212777dce3be"
    else
      url "https://static.ampcode.com/cli/0.0.1794224189-g2d19a9/amp-linux-x64"
      sha256 "9aac92ca7635cbe79056096b2ad405a0c041148301e741929645c4d81711f079"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
