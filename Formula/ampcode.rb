class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776056343-g168e20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776056343-g168e20/amp-darwin-arm64"
      sha256 "e2cbbdf8f56a4fa41d6980e6f5c0d6155292f1e05f71d8546fd6187c1e834671"
    else
      url "https://static.ampcode.com/cli/0.0.1776056343-g168e20/amp-darwin-x64"
      sha256 "a9b332093c7e4e121a15b841b70a70a0915458dd6fe08b8440584d0b6c918324"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776056343-g168e20/amp-linux-arm64"
      sha256 "c881af6f7df34862e0dfa004036e429aae3b80392e7c08e496d1a26ab0b80856"
    else
      url "https://static.ampcode.com/cli/0.0.1776056343-g168e20/amp-linux-x64"
      sha256 "b0fde44ae187513cded552d03dc5e5cc3565857fc0cd110654213368a8a4d9fa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
