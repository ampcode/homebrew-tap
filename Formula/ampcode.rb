class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791033893-g28ae98"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791033893-g28ae98/amp-darwin-arm64"
      sha256 "3acdd582e68054ec5cc5fc7d27ffb77385599674c1493a5ffe47d6bc9094a799"
    else
      url "https://static.ampcode.com/cli/0.0.1791033893-g28ae98/amp-darwin-x64"
      sha256 "a99f266d60dc161236336e751ecba906f08fa6d89a6888c94599efd8b08d6803"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791033893-g28ae98/amp-linux-arm64"
      sha256 "9dc51938f1a18756eabe078af474b2ad20acd77d5c090882d6e8d4010bfa017f"
    else
      url "https://static.ampcode.com/cli/0.0.1791033893-g28ae98/amp-linux-x64"
      sha256 "dc42a71ff5bc83822ad55f1ab9dbe0aa0e3e95d029693afafa237538951d8e8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
