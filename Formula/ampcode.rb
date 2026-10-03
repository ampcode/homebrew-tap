class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791006564-g492153"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791006564-g492153/amp-darwin-arm64"
      sha256 "919db91f5a11f35bef0c5f0c91508dc21197d85005297fd39f394860ec215e4a"
    else
      url "https://static.ampcode.com/cli/0.0.1791006564-g492153/amp-darwin-x64"
      sha256 "0aeeb9b721bbdaff0726efbb5e841210a04c5a5293b0ad9fe84f27a64c44296a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791006564-g492153/amp-linux-arm64"
      sha256 "6aed2f8b2145122cfd0a765ecd0b15f3319adf7bb858467a5f9cb59444d5c215"
    else
      url "https://static.ampcode.com/cli/0.0.1791006564-g492153/amp-linux-x64"
      sha256 "1dcb7c4ca3407012b3a2632e0e41a0a4baf0c9f932155162a5191aa40ef5b51e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
