class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783901814-gaa1719"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783901814-gaa1719/amp-darwin-arm64"
      sha256 "6cf87a41d44dbabee921e0167d9198c33a82b7658ee7b1406f180593411f52ba"
    else
      url "https://static.ampcode.com/cli/0.0.1783901814-gaa1719/amp-darwin-x64"
      sha256 "d82f939c849e472aa2cc19838fe7bf7ee17e184c6d7fe54d4d3bcbada9278a48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783901814-gaa1719/amp-linux-arm64"
      sha256 "0baeb48485da880c984ad9735de739f85191a41f0c85926e2e879df684494e61"
    else
      url "https://static.ampcode.com/cli/0.0.1783901814-gaa1719/amp-linux-x64"
      sha256 "9ca826f9c510c11a20c0563ae3fa203d0f309f3d5bdb4a8d55aed6dd48a1eeab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
