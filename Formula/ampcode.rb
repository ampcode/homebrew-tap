class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782698542-g800cf0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782698542-g800cf0/amp-darwin-arm64"
      sha256 "32d5baf18d5dc313ed03ce1f91617860dd198bb516eb33b0d2404b00aecfb3a8"
    else
      url "https://static.ampcode.com/cli/0.0.1782698542-g800cf0/amp-darwin-x64"
      sha256 "6284c1cb32467beed566d8d21e77fc72a5a43f77b8c1aaef0c7b70ed3e74a70c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782698542-g800cf0/amp-linux-arm64"
      sha256 "d4c0e1ad5ba52077e0aaced654e3d982df0e68b1c1c68f780103bd5ba2079ed3"
    else
      url "https://static.ampcode.com/cli/0.0.1782698542-g800cf0/amp-linux-x64"
      sha256 "8e100018057009eb70c40b66ba74f94bb085d4cd2215a1ac76c754e233068765"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
