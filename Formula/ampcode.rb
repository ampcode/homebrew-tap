class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788777730-g8a6e54"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788777730-g8a6e54/amp-darwin-arm64"
      sha256 "b1aa8796fd1b13a1f723796271eeb2133fbcdba10fcb2783648cc85e706e1867"
    else
      url "https://static.ampcode.com/cli/0.0.1788777730-g8a6e54/amp-darwin-x64"
      sha256 "7ba15a75ec6ca40bd6380884071f59e871b001f45bcd10081afe415fdfc151e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788777730-g8a6e54/amp-linux-arm64"
      sha256 "2d4bd3ab41570248650560696c7bd4eb3213727e4f349ebd80ec2affdfc345ae"
    else
      url "https://static.ampcode.com/cli/0.0.1788777730-g8a6e54/amp-linux-x64"
      sha256 "5fe4d8044754552105d418e5e1646cfd7d92b26a47f146ddeef9326430ea5c95"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
