class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795622439-g2078b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795622439-g2078b8/amp-darwin-arm64"
      sha256 "b51adee57fcbe4de17106f82835127bd373901646aaa955ba5bed65e9ab46579"
    else
      url "https://static.ampcode.com/cli/0.0.1795622439-g2078b8/amp-darwin-x64"
      sha256 "50297181284f1d82dc4eefc65a43bfcde0ce860bc25b8f35afeaaca4150d3bd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795622439-g2078b8/amp-linux-arm64"
      sha256 "826c9d1822b64b16e4091e53527147e04c13f1ba704307dba6f0f50a3ce8c2b6"
    else
      url "https://static.ampcode.com/cli/0.0.1795622439-g2078b8/amp-linux-x64"
      sha256 "fd4bda1e0415c5dbd1a62b85c0189299f745829058a0d7124ecafb44e3c93171"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
