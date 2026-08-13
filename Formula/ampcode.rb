class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786579933-ga2774d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786579933-ga2774d/amp-darwin-arm64"
      sha256 "cb4c9b4748e9ea4910617b71858b48e371cca9d9d67331ff5000ada1a1e0ccb9"
    else
      url "https://static.ampcode.com/cli/0.0.1786579933-ga2774d/amp-darwin-x64"
      sha256 "0896b63ab40ef7e49f878eca45a0cf7c6d4b933786a4e83fc59d49cee41a6d45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786579933-ga2774d/amp-linux-arm64"
      sha256 "121fb97426a51893c0f68667540e7480d9831fefc61927cf8fdc207a653f05d2"
    else
      url "https://static.ampcode.com/cli/0.0.1786579933-ga2774d/amp-linux-x64"
      sha256 "7b2175c126baf6c169d89a6819f5a8cf943bfa46063c829736624f4c1d2b2d46"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
