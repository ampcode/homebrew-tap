class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773332314-g3ae883"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773332314-g3ae883/amp-darwin-arm64"
      sha256 "ac3077f6e1e43aba372884612f48a5a9cbe928f2d6ce9f73b256f2783c39bfe0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773332314-g3ae883/amp-darwin-x64"
      sha256 "609f5c83289b47b21eb69a964219939952ca2e66a65d168a26fd59a0368333c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773332314-g3ae883/amp-linux-arm64"
      sha256 "61331f4ba6f955b6f2e737afc548a40f8c2919c00d3439e12282aed919784fff"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773332314-g3ae883/amp-linux-x64"
      sha256 "1f2bbc66baa67a3741ada9468590881120c51cdd24592f4fa2e7f440f9ee82d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
