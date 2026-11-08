class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794153641-g4ab4e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794153641-g4ab4e9/amp-darwin-arm64"
      sha256 "306bfffed6f8765e049c04805872d5679f25bd511f34266ffd0076184a61ea53"
    else
      url "https://static.ampcode.com/cli/0.0.1794153641-g4ab4e9/amp-darwin-x64"
      sha256 "f5b000d57b62e0287912aff3f62079c2a91416a0b7846e0942529d87d01f7f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794153641-g4ab4e9/amp-linux-arm64"
      sha256 "99a7daa35910e71b0c968bf3de50901be8c8bcdad76f0fb94ef5186bdbbccefe"
    else
      url "https://static.ampcode.com/cli/0.0.1794153641-g4ab4e9/amp-linux-x64"
      sha256 "187c8ca19b24888efd05d196eebca7b2addf2d1d1a7320f4346195d51604d4bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
