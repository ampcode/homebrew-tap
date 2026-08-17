class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786924891-g5a5391"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786924891-g5a5391/amp-darwin-arm64"
      sha256 "07e0c34c293d4d7d3b130f90df67002c519ea94eddd78c208bf15a09cc0ed33a"
    else
      url "https://static.ampcode.com/cli/0.0.1786924891-g5a5391/amp-darwin-x64"
      sha256 "3fdb797097cd2eae7b3b6d36536ba9848205402579a6af205e020cea37f7d5ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786924891-g5a5391/amp-linux-arm64"
      sha256 "6eb4824c411c6ba92a1bce461e7f3f2c99276cfeb044d9b0049e04bc7d242c40"
    else
      url "https://static.ampcode.com/cli/0.0.1786924891-g5a5391/amp-linux-x64"
      sha256 "7737c6778e5013c459f66cd8db1112abde25894eccb0c23029924ef5b2567aca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
