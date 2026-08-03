class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785716348-g5ad872"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785716348-g5ad872/amp-darwin-arm64"
      sha256 "772221900aa7b6f4df5c160f12a7336866815542880ea01642de80bd08eb1550"
    else
      url "https://static.ampcode.com/cli/0.0.1785716348-g5ad872/amp-darwin-x64"
      sha256 "60a473ea75f1f919a8e80e5c6d71aff483fdec845e48bdf47df597886dc8bc95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785716348-g5ad872/amp-linux-arm64"
      sha256 "3b804a031c7c126c114214df119eecbbce8b0986bec592d3e3247b99783656ae"
    else
      url "https://static.ampcode.com/cli/0.0.1785716348-g5ad872/amp-linux-x64"
      sha256 "e2791ffe2325d0f869e0823bb6d7daedd1480d1bb842335404abe5f24e4100e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
