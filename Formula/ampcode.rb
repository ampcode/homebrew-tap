class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787658992-g628b2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787658992-g628b2e/amp-darwin-arm64"
      sha256 "e8787d1d63dc3fbdc29c8ccc7f108a78d927b1c729cec953d5df6abf7ab3c61b"
    else
      url "https://static.ampcode.com/cli/0.0.1787658992-g628b2e/amp-darwin-x64"
      sha256 "2874892e9901c7773493a83481529068ca81e1e57186a560a70a28b9b2d0041a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787658992-g628b2e/amp-linux-arm64"
      sha256 "0c4cc489550915fb20106f2a63620b9de4a724239d35b895063cfacbc0170858"
    else
      url "https://static.ampcode.com/cli/0.0.1787658992-g628b2e/amp-linux-x64"
      sha256 "154802e38e744b6d0e82cfcd446cb6f9507855579bfbede951f756cda54597b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
