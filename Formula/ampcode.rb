class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792972877-g78a0d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792972877-g78a0d4/amp-darwin-arm64"
      sha256 "4418bfd38007c79d351297a963cffa1fc9a6511853fb8529a34e7353102430b2"
    else
      url "https://static.ampcode.com/cli/0.0.1792972877-g78a0d4/amp-darwin-x64"
      sha256 "bbebdd3db826859db66d2a3ed57f896c71012064ec5ff4f27051ce32170a208c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792972877-g78a0d4/amp-linux-arm64"
      sha256 "bdb941a0da930a7a3cb7bd484d30761899753f25b0064b0c8cde4f5851ae30c1"
    else
      url "https://static.ampcode.com/cli/0.0.1792972877-g78a0d4/amp-linux-x64"
      sha256 "80b0e4d404ff9f97d5e3385fc82e5665273c905f780ce2090bd78e0e49144127"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
