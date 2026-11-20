class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795165186-g8afd64"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795165186-g8afd64/amp-darwin-arm64"
      sha256 "15e2cdcb7b75fbcaa3cd2a62d03b595b1b039d5e84a43018a886c76a2cb891ed"
    else
      url "https://static.ampcode.com/cli/0.0.1795165186-g8afd64/amp-darwin-x64"
      sha256 "5f1b6e1ad333b8b70393836ae07df79a7e0e6f9e5fbe8db41d1f0c9f9e339fa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795165186-g8afd64/amp-linux-arm64"
      sha256 "46b9a4814f3e2809ca321bd55fdc2d3958719ba97b0fa6fd6f89f3e7fe960fdb"
    else
      url "https://static.ampcode.com/cli/0.0.1795165186-g8afd64/amp-linux-x64"
      sha256 "832d1d59ce2bf4cd6d88f20ac2609599163fc2de4c867799774db96421f8f03b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
