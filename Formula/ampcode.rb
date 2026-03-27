class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774588429-gb2a4b6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774588429-gb2a4b6/amp-darwin-arm64"
      sha256 "5cb1a022da386e05692794f4e01a0684d455d70e10f978806fc5e2795a05b31d"
    else
      url "https://static.ampcode.com/cli/0.0.1774588429-gb2a4b6/amp-darwin-x64"
      sha256 "4c0851793226ef27fe66ab2a1fee64b15c9d1bc5c3a26e32fd52b629208fe333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774588429-gb2a4b6/amp-linux-arm64"
      sha256 "c550de9ba1830e7b8ee5fa57200a5293421bbe7f9ab057ff8b38ad779e3b148b"
    else
      url "https://static.ampcode.com/cli/0.0.1774588429-gb2a4b6/amp-linux-x64"
      sha256 "fb61aec9f777ece88b7146df3f4c83e7987cc7718b8b0ef01a3a702e8bba33a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
