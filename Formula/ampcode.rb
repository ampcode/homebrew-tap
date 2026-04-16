class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776370304-gfabf5f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776370304-gfabf5f/amp-darwin-arm64"
      sha256 "717c74f24f6f13ab3acb940e2ca5e7c8d0ff975a6064f920bfc81230c9fa0072"
    else
      url "https://static.ampcode.com/cli/0.0.1776370304-gfabf5f/amp-darwin-x64"
      sha256 "b980cbd9924d554a2c796ede9901e3478f956f1543b3c4cd3b9e33295d3d5a8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776370304-gfabf5f/amp-linux-arm64"
      sha256 "953058132a9497ec19417ab5263362d316c784dd1d1bd50fe4d35e66dcb7fdda"
    else
      url "https://static.ampcode.com/cli/0.0.1776370304-gfabf5f/amp-linux-x64"
      sha256 "20cab165f47e301fffb325011e186a3420bcfc8778f0b078ae3dd4b2a25bcff2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
