class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794888033-g050c23"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794888033-g050c23/amp-darwin-arm64"
      sha256 "eb2a702186e1b676d190afffe5acf5933b8363e6ea216b19dbeb650d8c2f6cea"
    else
      url "https://static.ampcode.com/cli/0.0.1794888033-g050c23/amp-darwin-x64"
      sha256 "6690c7c410f67ae815ea2e342994ea5ac4efafdda47f6c0bfc77a2cf48f75f52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794888033-g050c23/amp-linux-arm64"
      sha256 "f259c82ffbc38aefdf46bf3c1bf78b9b19a5b35e3a88701d10ba95f14355abcd"
    else
      url "https://static.ampcode.com/cli/0.0.1794888033-g050c23/amp-linux-x64"
      sha256 "29c367f85aba156bfd2ef0adc5a09e3a9e73a25a1b415360799400fdbaf474d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
