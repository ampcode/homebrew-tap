class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793836860-gb8120f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793836860-gb8120f/amp-darwin-arm64"
      sha256 "79afb0da94e30dcad70c697211d4c53f036b90827cd98af381327db2fd226939"
    else
      url "https://static.ampcode.com/cli/0.0.1793836860-gb8120f/amp-darwin-x64"
      sha256 "741a8a5d555f73b741963018f139fe88877bddffb16a91aaea373022ae5cc538"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793836860-gb8120f/amp-linux-arm64"
      sha256 "3f445b0ff3a577f223be465d39e253f032f60851966383eeb7b37e112956da15"
    else
      url "https://static.ampcode.com/cli/0.0.1793836860-gb8120f/amp-linux-x64"
      sha256 "4f8839a895de5f75666c0c02600f1c2e81296b87ddf884b202864e306163dbdf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
