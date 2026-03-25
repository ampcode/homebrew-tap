class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774469284-gd52921"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774469284-gd52921/amp-darwin-arm64"
      sha256 "3f72e84454747021ff5346cd76a3ca56ae10cc777af2de8315454da4675957ca"
    else
      url "https://static.ampcode.com/cli/0.0.1774469284-gd52921/amp-darwin-x64"
      sha256 "dbbc75e4e378654d84ca4a2924355b0b70eed774594f9f4988a49e4eeb5a3c7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774469284-gd52921/amp-linux-arm64"
      sha256 "7f469098a2d99531058d8d9b2ce6d691a103037f3b6d86ae4ad6d4ff053a0ab0"
    else
      url "https://static.ampcode.com/cli/0.0.1774469284-gd52921/amp-linux-x64"
      sha256 "b055042bcce65fc839b5ac6f32dd292cde4f18891c6aa33f87db283c2629883e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
