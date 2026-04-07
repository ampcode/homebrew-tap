class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775538866-g2b4395"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775538866-g2b4395/amp-darwin-arm64"
      sha256 "859c2f61fe61b8c525f3288583d7e010258aeb24c8e2500953fdd8115e1597f5"
    else
      url "https://static.ampcode.com/cli/0.0.1775538866-g2b4395/amp-darwin-x64"
      sha256 "ca7247b06e680a74b63734b54530dfbfbbd33a39db96cd76f1118b3ea0024177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775538866-g2b4395/amp-linux-arm64"
      sha256 "1e990e4c596e14781fd74f2a4b006285402e70a07d04a338bfc24728f63db6d9"
    else
      url "https://static.ampcode.com/cli/0.0.1775538866-g2b4395/amp-linux-x64"
      sha256 "94cf81f180cabd84ae9b8ad33da0dcb24d61f3fbcd46527181348984a13bfd40"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
