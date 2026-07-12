class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783845703-gd84c78"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783845703-gd84c78/amp-darwin-arm64"
      sha256 "324988465e19797043f631fe45f6731813f2c2c089a91214657089a48155c3a6"
    else
      url "https://static.ampcode.com/cli/0.0.1783845703-gd84c78/amp-darwin-x64"
      sha256 "810355a30d0dd35a6c552c563a01e1eb3bdff0f098838ed0f5825a17429211d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783845703-gd84c78/amp-linux-arm64"
      sha256 "c8640567981881584d2d49eca5a0ea475ed67f73d16ada4eb7e573e75d363021"
    else
      url "https://static.ampcode.com/cli/0.0.1783845703-gd84c78/amp-linux-x64"
      sha256 "d92ff72e9d3475d9115aeb2ee425fe5ef8b3be27e070b73a0e23b173451e7aab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
