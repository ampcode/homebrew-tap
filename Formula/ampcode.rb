class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777992133-g3b879b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777992133-g3b879b/amp-darwin-arm64"
      sha256 "bf37b106b3fb79f8a2ac426c6af04b4441e93cab0999a30ba32807341134334a"
    else
      url "https://static.ampcode.com/cli/0.0.1777992133-g3b879b/amp-darwin-x64"
      sha256 "e2d5fbfacf6649154e8391882d80f9d027836525ea37bb73a37fd294e97e125b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777992133-g3b879b/amp-linux-arm64"
      sha256 "efd0788756821bc026d967f82123c7e2d960a817eacd67b3c2076baeed2113b5"
    else
      url "https://static.ampcode.com/cli/0.0.1777992133-g3b879b/amp-linux-x64"
      sha256 "26868d281bbf9fa4d0c84774d4481f7144d1eb9a008af8f4a24eee44ae6830ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
