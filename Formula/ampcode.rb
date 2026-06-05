class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780618562-g482569"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780618562-g482569/amp-darwin-arm64"
      sha256 "57d11d27884ba450772cf0f6350259da93a07c3cd40220182af9388de34b497f"
    else
      url "https://static.ampcode.com/cli/0.0.1780618562-g482569/amp-darwin-x64"
      sha256 "ce9f7f36fd479d585f071bfe1b0734752b973c69e28a9262f3df8e286ee3966d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780618562-g482569/amp-linux-arm64"
      sha256 "47df2a89ecbe4901d15962a339f073a1a1fcd29cbf535399ec67bd461e090cce"
    else
      url "https://static.ampcode.com/cli/0.0.1780618562-g482569/amp-linux-x64"
      sha256 "cf3bb3ed9dd62ac7cc7033704ec7ab4c574b51a013fdcb8a0ab831e1fae08d11"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
