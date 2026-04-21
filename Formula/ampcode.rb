class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776747294-ge38112"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776747294-ge38112/amp-darwin-arm64"
      sha256 "643d086bb45f4142da938726ef0747e6be4753941f89291e40a2c898df7b4fb2"
    else
      url "https://static.ampcode.com/cli/0.0.1776747294-ge38112/amp-darwin-x64"
      sha256 "eff1c94fd499124c37678a088b78b8cc8f9a4624a75502be5543b7a2a06d8336"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776747294-ge38112/amp-linux-arm64"
      sha256 "057399cfd23f7dd1b41e649d49f841006a407b84bce1029c8e6dfb30c9f6deb8"
    else
      url "https://static.ampcode.com/cli/0.0.1776747294-ge38112/amp-linux-x64"
      sha256 "f489fcaf49b338689f0e5f733a55674de81ff066414ad8d51d439264b070e1b3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
