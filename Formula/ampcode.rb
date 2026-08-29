class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788004847-g6059f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788004847-g6059f6/amp-darwin-arm64"
      sha256 "dd4d73368fa6bef51ca98fb6c9935badc84a00be17a8a83894ea627311315e98"
    else
      url "https://static.ampcode.com/cli/0.0.1788004847-g6059f6/amp-darwin-x64"
      sha256 "cc57a610317c79b46a4375943df54ded738d14b546952084e6e9c26750765543"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788004847-g6059f6/amp-linux-arm64"
      sha256 "228d94c477a5e4d93e0a019062a661f4d4ada094138cf98d09720d6d1bafb077"
    else
      url "https://static.ampcode.com/cli/0.0.1788004847-g6059f6/amp-linux-x64"
      sha256 "d9757e7fc1695761fec2dd321f7cc7e4ccd3a8073f779f3cc3c96010fe3d7a8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
