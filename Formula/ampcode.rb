class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792065649-g5a30fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792065649-g5a30fc/amp-darwin-arm64"
      sha256 "f47b67a260564ab2c5d3500733dc769ac630fa18898880d5af0c5ca26d938895"
    else
      url "https://static.ampcode.com/cli/0.0.1792065649-g5a30fc/amp-darwin-x64"
      sha256 "e88b64f1c6673fad85a935f7ae87f58a000f85d409de7592d42351dbfbd62534"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792065649-g5a30fc/amp-linux-arm64"
      sha256 "373e8d746d77a030a2876daea1f1977a82633c3ec49618e833aac21f537507eb"
    else
      url "https://static.ampcode.com/cli/0.0.1792065649-g5a30fc/amp-linux-x64"
      sha256 "593ab261d0fc344cb188a56e51d317c2968627de032f1738a895d31c1773c480"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
