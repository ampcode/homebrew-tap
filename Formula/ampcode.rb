class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793966450-gc1122d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793966450-gc1122d/amp-darwin-arm64"
      sha256 "0480f93a0840532e084f28d4f642f4ddcbba842c6995b0b4ba8d0dd5b9303d41"
    else
      url "https://static.ampcode.com/cli/0.0.1793966450-gc1122d/amp-darwin-x64"
      sha256 "5973270aa9c7a91b958036d932dae7501f8cd0a934b796e72afa29be964b332a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793966450-gc1122d/amp-linux-arm64"
      sha256 "371b62197b84d80cd8fc185e5e11babc3ab8f82399f6b006ce8c7bfbd2a88bac"
    else
      url "https://static.ampcode.com/cli/0.0.1793966450-gc1122d/amp-linux-x64"
      sha256 "79be7c301d6bcd477f6f5e58672b08b760d8244ab8a97feed29eb26969228882"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
