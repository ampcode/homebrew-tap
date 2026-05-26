class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779754738-g9106a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779754738-g9106a6/amp-darwin-arm64"
      sha256 "3cae823317e18cfac9671e97a4d8a1c779f347b0b57ecae8bd32c9a64495f5ab"
    else
      url "https://static.ampcode.com/cli/0.0.1779754738-g9106a6/amp-darwin-x64"
      sha256 "8a02c4064f3e4614a3d9cdc42adfafc7bee885cbc692c91bc0a7d9630357e35a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779754738-g9106a6/amp-linux-arm64"
      sha256 "530b893d9ff2396254534a0d73c193383ea37a6036d1f0e6b5720410c6aef0f8"
    else
      url "https://static.ampcode.com/cli/0.0.1779754738-g9106a6/amp-linux-x64"
      sha256 "10892be5e062806535e001415c7ffe0a29a17c290da485fd83299f12d25f9058"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
