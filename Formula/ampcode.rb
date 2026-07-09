class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783556522-g32d9f9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783556522-g32d9f9/amp-darwin-arm64"
      sha256 "3fd5ce4c1d46d2d0d29f7de003c1ca39bc9acb2f492db5509300ae83f81eceb8"
    else
      url "https://static.ampcode.com/cli/0.0.1783556522-g32d9f9/amp-darwin-x64"
      sha256 "55e71ae0469785d67ec38225bc3fe710e48fa3a0a0c579a5474e9923ca947139"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783556522-g32d9f9/amp-linux-arm64"
      sha256 "7ba72f5590e14d2890cac4c2389e2cb8b9013fef4936faf6ec52c20deb70d885"
    else
      url "https://static.ampcode.com/cli/0.0.1783556522-g32d9f9/amp-linux-x64"
      sha256 "40bd6563c9d347881d2ff78f6bc168378ccf6c92ba3efe4b79585f9e59e5c5e6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
