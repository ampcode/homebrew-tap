class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781800585-ga7cc39"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781800585-ga7cc39/amp-darwin-arm64"
      sha256 "2f46d3ff4c155ed834e9097fdb798d8ca755ba5c7448f3b45c2a60a216325bf2"
    else
      url "https://static.ampcode.com/cli/0.0.1781800585-ga7cc39/amp-darwin-x64"
      sha256 "db7f0cdf5d51ce6c5fa1811a8e9ae3514ae0cd35d94f1299158d2b49604dca5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781800585-ga7cc39/amp-linux-arm64"
      sha256 "fefe79be56c9cbfaf61b4572480a0463b4def3a04869a7f3d6a0c7612e9352b0"
    else
      url "https://static.ampcode.com/cli/0.0.1781800585-ga7cc39/amp-linux-x64"
      sha256 "fd1cbd34866d53a6cb7b19e77dbe29d2afed875f2e221fc26c96b43723853f3f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
