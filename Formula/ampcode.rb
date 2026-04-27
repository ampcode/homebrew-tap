class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777279521-gff806d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777279521-gff806d/amp-darwin-arm64"
      sha256 "5eeada283f3b50fa2ca74fd56f28ba153262c392458557d447dd8cead021917f"
    else
      url "https://static.ampcode.com/cli/0.0.1777279521-gff806d/amp-darwin-x64"
      sha256 "e7fd283562b5a1f23e39de4d2dbc79f3b994acd8f542cd945d60408b1aa4e0f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777279521-gff806d/amp-linux-arm64"
      sha256 "134b3c44eb182de9d963e6ef485689229ec5de7e4b1be2660727ed90e50e18a0"
    else
      url "https://static.ampcode.com/cli/0.0.1777279521-gff806d/amp-linux-x64"
      sha256 "2ae332df3975e07921dd761aba7e3bebf72ad63bb1c477c2101af4001f217cd9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
