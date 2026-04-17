class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776399244-g1de5fe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776399244-g1de5fe/amp-darwin-arm64"
      sha256 "5ffbd9896509c456fef1dc198ca35bac7f44993adc4d302873a888ec58289647"
    else
      url "https://static.ampcode.com/cli/0.0.1776399244-g1de5fe/amp-darwin-x64"
      sha256 "411129ef7bc347ba4c93ebd9e55a41f559fafa474d3eed58a415620b7fabf1f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776399244-g1de5fe/amp-linux-arm64"
      sha256 "8e90d46325eb13e45fd5771e9cec847bd2dc7565ead1cd1756367d5217c7f4d6"
    else
      url "https://static.ampcode.com/cli/0.0.1776399244-g1de5fe/amp-linux-x64"
      sha256 "422feaadc95e0523210198c0a26bf15228f0d8445368cebc01507865e4e7bfd1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
