class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795406435-gdf62b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795406435-gdf62b3/amp-darwin-arm64"
      sha256 "b1d143d6efea28a4bc16df5dda397ed6959dc0e268eb21dfcd64d221890b047d"
    else
      url "https://static.ampcode.com/cli/0.0.1795406435-gdf62b3/amp-darwin-x64"
      sha256 "415cb1611880c8ce7a455bd1766939a673356de3dcecc43b9e9d05ec76779dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795406435-gdf62b3/amp-linux-arm64"
      sha256 "dd8eb2a883749fdb5def0fbcf74e4ec2fbf5bd62763410fc503ea0c5a6043288"
    else
      url "https://static.ampcode.com/cli/0.0.1795406435-gdf62b3/amp-linux-x64"
      sha256 "3a1a74dfb209dd9c61446fc02cf476995cc4b0a0a0a7b81fe34e5c7e46e4b924"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
