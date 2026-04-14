class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776142372-g88c61d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776142372-g88c61d/amp-darwin-arm64"
      sha256 "e9ded205fb2adaab87ba1f8eee4a99365166cac8be91a42c12470ccf0db2f22c"
    else
      url "https://static.ampcode.com/cli/0.0.1776142372-g88c61d/amp-darwin-x64"
      sha256 "2db756f97e346fe250cb71b5e1be823747982d3c2c8168a7ca69a301e17f3e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776142372-g88c61d/amp-linux-arm64"
      sha256 "c46e0fe4e83b8e851d77149c42acce6800fc8a6ea0a3bfe944a4297335512656"
    else
      url "https://static.ampcode.com/cli/0.0.1776142372-g88c61d/amp-linux-x64"
      sha256 "d89deb2a6e3e4064b75676a806164c76d1cdae4d34fe84fb723d0ef545d62956"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
