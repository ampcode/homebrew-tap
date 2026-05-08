class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778252358-g6f8618"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778252358-g6f8618/amp-darwin-arm64"
      sha256 "3a28f1ee263235e6fbd66dec0a3bc4ab6566998f68b38e4383ada8dd1eba2881"
    else
      url "https://static.ampcode.com/cli/0.0.1778252358-g6f8618/amp-darwin-x64"
      sha256 "d79bbfb3dc5db43ef72ba1412f0780f0e4efed2f57da9278c3602d15e2a408eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778252358-g6f8618/amp-linux-arm64"
      sha256 "e93091dc82f5c8a3c93706e3155c7c6db3be37bf71dddb1a8cc3ce108a7e99e6"
    else
      url "https://static.ampcode.com/cli/0.0.1778252358-g6f8618/amp-linux-x64"
      sha256 "878224cc79aced3c0b75373c984eeb407e3f8d3c1bbd470c63d38c3471823e64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
