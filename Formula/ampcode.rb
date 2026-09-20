class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789905635-g0f1dca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789905635-g0f1dca/amp-darwin-arm64"
      sha256 "bf40d168a015cfffc02cbb91a275b3447999139124a34707804995d95d3c0468"
    else
      url "https://static.ampcode.com/cli/0.0.1789905635-g0f1dca/amp-darwin-x64"
      sha256 "76dfe3d5b2176335c0a4d9dbfe6a52c5b77c794e67fbe79a5ce3ac2bc52526b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789905635-g0f1dca/amp-linux-arm64"
      sha256 "e8c20c3d46f977c51281fb24c90f19d3061b357469a7aebe232ec320e4cd203a"
    else
      url "https://static.ampcode.com/cli/0.0.1789905635-g0f1dca/amp-linux-x64"
      sha256 "4f89a689adfb0aa037f57e920f2870fa42b303fbdb20e3d79015b8c7740d60b1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
