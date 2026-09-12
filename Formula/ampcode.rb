class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789200043-gdb3b35"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789200043-gdb3b35/amp-darwin-arm64"
      sha256 "4bcd21c98404d4426e3f5c8f8c99a292434cbbe5077b45f67a51221363bd0250"
    else
      url "https://static.ampcode.com/cli/0.0.1789200043-gdb3b35/amp-darwin-x64"
      sha256 "f9ff18249b6f711fd7c6216b510e7da4daed78c553103df5eb16425e4776f408"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789200043-gdb3b35/amp-linux-arm64"
      sha256 "53c4532bcfd98b37d48c4c25db4d5a750239b4e439e71f62791b99d75f950837"
    else
      url "https://static.ampcode.com/cli/0.0.1789200043-gdb3b35/amp-linux-x64"
      sha256 "2866380513c1562c89b19f751d74be2d62e90b202c290ba5f62e7d8f61718aff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
