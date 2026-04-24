class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777066030-gc7ea5c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777066030-gc7ea5c/amp-darwin-arm64"
      sha256 "cb9984f347dca1ddb374c2fbc0dcfb69848e93c778d5c57b7bdeab75c7ab8e96"
    else
      url "https://static.ampcode.com/cli/0.0.1777066030-gc7ea5c/amp-darwin-x64"
      sha256 "7acd9d26ac967f5c66a2b66307cb9947e0bff9fd5acea305fbe074f89238677c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777066030-gc7ea5c/amp-linux-arm64"
      sha256 "0b29560f64baa3e133b030bb1b87844f917c4f1212ad97a3dd07a9fe6d589440"
    else
      url "https://static.ampcode.com/cli/0.0.1777066030-gc7ea5c/amp-linux-x64"
      sha256 "58392135d7261089cf97bcea349dd2c05250e776e944414ccf849a07d503adbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
