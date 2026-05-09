class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778328768-gb9a37d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778328768-gb9a37d/amp-darwin-arm64"
      sha256 "80cf80f22105952eb82a66964eb1778fcd39206549c26d48c192f3a8f8618f6e"
    else
      url "https://static.ampcode.com/cli/0.0.1778328768-gb9a37d/amp-darwin-x64"
      sha256 "5584ed4448ede7c03ace1ceb9165289d42ea72976f8cc7a314eadb07267e12aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778328768-gb9a37d/amp-linux-arm64"
      sha256 "4fa9c91ed684ad003ddb1d6b8efb2284bc53b38601fef9581b22e5b9780890c7"
    else
      url "https://static.ampcode.com/cli/0.0.1778328768-gb9a37d/amp-linux-x64"
      sha256 "18f32af772b91dabb90a45cdac544fc65c8675cecb30f33ec0d9a2fb007fa7c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
