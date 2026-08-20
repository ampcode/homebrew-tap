class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787241916-g56aafe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787241916-g56aafe/amp-darwin-arm64"
      sha256 "0be8342933f6890f6698dd146baca66f306cea629dbce70f3c2ffbde7e38b936"
    else
      url "https://static.ampcode.com/cli/0.0.1787241916-g56aafe/amp-darwin-x64"
      sha256 "bcb75f2912af93d5dfb2c220edbf955076763bf5f64ef8b53b486b26f0826c86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787241916-g56aafe/amp-linux-arm64"
      sha256 "39f130845bc93458b71eda804d053005dd65a4582d4c8f06c7b6694944c9e726"
    else
      url "https://static.ampcode.com/cli/0.0.1787241916-g56aafe/amp-linux-x64"
      sha256 "70f86917bfcc405c476d26284be7927d12535c4bd5f461b72596f6c657d1729d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
