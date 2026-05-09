class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778285801-g828860"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778285801-g828860/amp-darwin-arm64"
      sha256 "31dbb3241ef3ff3d48f1e073c4d4a5345bd256a726728345a1d851476268909a"
    else
      url "https://static.ampcode.com/cli/0.0.1778285801-g828860/amp-darwin-x64"
      sha256 "9c9adc1f9f1d3f367194fea6e48d30995a821a5985ad4b904d56e10559158547"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778285801-g828860/amp-linux-arm64"
      sha256 "aa05805eb6418469969a5791aa9e2d809c84391af6e6cb3fad04a54a142b66f8"
    else
      url "https://static.ampcode.com/cli/0.0.1778285801-g828860/amp-linux-x64"
      sha256 "736db85f2c3c9a02561d075b7aa1530ec0fd901696cbb2b1605d2f2b74ac863e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
