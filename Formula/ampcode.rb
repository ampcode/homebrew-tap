class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774915652-ge3c13f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774915652-ge3c13f/amp-darwin-arm64"
      sha256 "166a38655de6f3af8af28ab93a46b10c2366808e345c4d7b3d7503c950e0e16a"
    else
      url "https://static.ampcode.com/cli/0.0.1774915652-ge3c13f/amp-darwin-x64"
      sha256 "531597b0cde32ca225875533da71790f186d7b942bcd9df13ec318c94a7c02aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774915652-ge3c13f/amp-linux-arm64"
      sha256 "1396d6c10f69a05134654af8b9738f8fbbe7614197769dc0e5836734dabe0266"
    else
      url "https://static.ampcode.com/cli/0.0.1774915652-ge3c13f/amp-linux-x64"
      sha256 "c5f1fa2566377a55c3afcb81809873b3f65ceb6bbb038dcffc0d80606e5a11c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
