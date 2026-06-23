class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782236573-g268fa2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782236573-g268fa2/amp-darwin-arm64"
      sha256 "d55ca9a7f7f940ca26c50e0b0979a7fc363d989bb638e8dd1afd8d8a32d6b53b"
    else
      url "https://static.ampcode.com/cli/0.0.1782236573-g268fa2/amp-darwin-x64"
      sha256 "3941b68458d8b019088297f6bd68304734a6713dbf5fc9e27c14b408a8c0320c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782236573-g268fa2/amp-linux-arm64"
      sha256 "d01c0090b39af8b6e1cb4c6d80f2b24f5a67c8391e033dd73a2a963068232e5a"
    else
      url "https://static.ampcode.com/cli/0.0.1782236573-g268fa2/amp-linux-x64"
      sha256 "afb16f3c1cf4d380a2339a772dabe7c64c6a625b30dcc7f85643583065e5d903"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
