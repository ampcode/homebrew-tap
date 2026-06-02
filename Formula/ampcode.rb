class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780359918-g778c3a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780359918-g778c3a/amp-darwin-arm64"
      sha256 "fdd05b28b7d7debb7c2b296c9b95afba903cc0b2864bfcac22d5f445495a7979"
    else
      url "https://static.ampcode.com/cli/0.0.1780359918-g778c3a/amp-darwin-x64"
      sha256 "54a23009a514c422913285cfbeb48abc42b7b9477ea0556c499dfa29b9c27c23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780359918-g778c3a/amp-linux-arm64"
      sha256 "514c5d02600644174900ca36772aa8837402c9fe87077e1fbd86d3fe1cfda7c5"
    else
      url "https://static.ampcode.com/cli/0.0.1780359918-g778c3a/amp-linux-x64"
      sha256 "3801d32f2ae61a9ed9139070292dd67be038bfed672535bb917416daee1973d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
