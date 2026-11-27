class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795737653-g84af98"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795737653-g84af98/amp-darwin-arm64"
      sha256 "8a2e85378617719b5aff343df0154b7b5bde3fb136cc0b0f5f780e67f408d284"
    else
      url "https://static.ampcode.com/cli/0.0.1795737653-g84af98/amp-darwin-x64"
      sha256 "ffaba8fe3d6363b83342ab5ee35699fa4cf30bce2ad0d85bbb8624515e1d2d03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795737653-g84af98/amp-linux-arm64"
      sha256 "43a01dda501290ebbbf75919017faad36842d822a94a457d800bb086cc7d8ec5"
    else
      url "https://static.ampcode.com/cli/0.0.1795737653-g84af98/amp-linux-x64"
      sha256 "0d11c6d6347cc29fd885ef0dfd93300abbccb358677460b5f7dda4ee390c7a2e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
