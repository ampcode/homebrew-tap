class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777394542-g1e2759"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777394542-g1e2759/amp-darwin-arm64"
      sha256 "53a63b58d158e200e5d2e6b5598311a335bac1ca9d565167a0e26d8d6a28a3a0"
    else
      url "https://static.ampcode.com/cli/0.0.1777394542-g1e2759/amp-darwin-x64"
      sha256 "e416c30d9a06f4fc2dbd6a7ae48ebd892997d0ac406d3046c5356d71808b8906"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777394542-g1e2759/amp-linux-arm64"
      sha256 "677810744bc5776b760faaa8fffc79735c1816c07c8420e87e0a3d4553f35921"
    else
      url "https://static.ampcode.com/cli/0.0.1777394542-g1e2759/amp-linux-x64"
      sha256 "f9d844899ccec4d5a207d67e26876477f375b13693aabc5a57b7905956689276"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
