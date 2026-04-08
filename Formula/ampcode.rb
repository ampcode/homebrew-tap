class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775650308-gd490eb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775650308-gd490eb/amp-darwin-arm64"
      sha256 "0180b7be02ba2bcbceebf8502acdbab1486505eaedbdb331fd7aec012f8d5f0c"
    else
      url "https://static.ampcode.com/cli/0.0.1775650308-gd490eb/amp-darwin-x64"
      sha256 "b02d2b7aafcbf0952f5c6e323a824e4019aeb4b939df92048780761238e16ca2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775650308-gd490eb/amp-linux-arm64"
      sha256 "4c04880c6aa9860264576d83ab52aa4738cd956733cc6b1c94528705439774fc"
    else
      url "https://static.ampcode.com/cli/0.0.1775650308-gd490eb/amp-linux-x64"
      sha256 "5f405b420f86a659117bc71f23ad8bd1fe0fdf666bcb4871593aaeb571f0d3ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
