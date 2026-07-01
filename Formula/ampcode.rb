class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782865396-g54c9f5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782865396-g54c9f5/amp-darwin-arm64"
      sha256 "1143b0db742d5f2a0811d9b519ceb6cd773c2749b20d48323575b8d59e6aefdd"
    else
      url "https://static.ampcode.com/cli/0.0.1782865396-g54c9f5/amp-darwin-x64"
      sha256 "287de8ef8ebbe46683183826895426bf127146b0dfd8a612d5a0b3b77105200b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782865396-g54c9f5/amp-linux-arm64"
      sha256 "e555721d7d6d4cfe91cc44f3f0afacf6b53a1ad149908605b1a7ebbce584f697"
    else
      url "https://static.ampcode.com/cli/0.0.1782865396-g54c9f5/amp-linux-x64"
      sha256 "813811a521ea26231053e2d6531d611ed2f2f6a478126a5b6128d1e45aa23e0e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
