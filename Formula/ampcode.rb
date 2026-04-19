class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776586567-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776586567-g13eef6/amp-darwin-arm64"
      sha256 "490fee974796dd5b23541b22e8403c3ef9ce3f9b08e25124d5539c80ec4ba3de"
    else
      url "https://static.ampcode.com/cli/0.0.1776586567-g13eef6/amp-darwin-x64"
      sha256 "02f8e933891a39615542503ed026a36bf93af7ba6133595a82652ab3660ddd51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776586567-g13eef6/amp-linux-arm64"
      sha256 "c3ca17338f1b18d600bae782eb939699d99f9bf89622022d132ad7ffafe876d9"
    else
      url "https://static.ampcode.com/cli/0.0.1776586567-g13eef6/amp-linux-x64"
      sha256 "34a2bf2473c523842532d8f94539b23ab14bcca5d822cd91873fe3f16289c205"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
