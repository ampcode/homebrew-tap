class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783196325-g4f0040"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783196325-g4f0040/amp-darwin-arm64"
      sha256 "8f076a589c40a930127260b6bd2bd2848ef8b5439f3c7fcdd88d2dca3c0ec949"
    else
      url "https://static.ampcode.com/cli/0.0.1783196325-g4f0040/amp-darwin-x64"
      sha256 "4b04c1ba885d4c35d1cffbcaa61e0e620e669d78a51633e8ddf029c3bfd0be66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783196325-g4f0040/amp-linux-arm64"
      sha256 "b416c53e085759e1a745ea735a4c4eb4caba5e81e5a63039a82a8bab653848c3"
    else
      url "https://static.ampcode.com/cli/0.0.1783196325-g4f0040/amp-linux-x64"
      sha256 "e0ddada5813c54d7ab0e0421eddc900a6331103ff9e9b8b6d31788f2150b0a0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
