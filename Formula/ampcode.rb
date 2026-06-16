class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781598550-g5675fa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781598550-g5675fa/amp-darwin-arm64"
      sha256 "92b1d50ff5a87c27b71be819421dd42ced124d52e18530e063af75cc2e098310"
    else
      url "https://static.ampcode.com/cli/0.0.1781598550-g5675fa/amp-darwin-x64"
      sha256 "26655ecf8abc6375fd90924dd222c53f2a94ca0478410f1f7f8930bf78c5a834"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781598550-g5675fa/amp-linux-arm64"
      sha256 "998a07c24bd200a7e3f4a9f1589e00cb55d5a0ee9acdebf87d2cb24d05483c38"
    else
      url "https://static.ampcode.com/cli/0.0.1781598550-g5675fa/amp-linux-x64"
      sha256 "852e4549b5fa473bcfa7fe20bb1ab5afe8d7a86f0c0761efb17d1a37e8ab9f6a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
