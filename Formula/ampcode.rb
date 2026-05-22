class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779409185-ge486da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779409185-ge486da/amp-darwin-arm64"
      sha256 "20c5d5bf2ea9474d6421b8d68d8ace0189b17f2eb3adf861163b1af47b5dd96b"
    else
      url "https://static.ampcode.com/cli/0.0.1779409185-ge486da/amp-darwin-x64"
      sha256 "8f260bf592ef48ea6045165339fe0c6144daf3b26776d0582bbc50ec9ef313f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779409185-ge486da/amp-linux-arm64"
      sha256 "7c05ffdfc5a67aa2233136203c0bebabf2462e0c1aadb5d56aa755e63a4182b1"
    else
      url "https://static.ampcode.com/cli/0.0.1779409185-ge486da/amp-linux-x64"
      sha256 "6df388f14438cd7fd280ec6384024967a1fbf967814a7b9be7ceb5780e7d52c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
