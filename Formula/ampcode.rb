class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790934954-gaac027"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790934954-gaac027/amp-darwin-arm64"
      sha256 "e9af1b060862884888fdc2e2d79b3885b5267a15f237c0a3610da2df6d3d3969"
    else
      url "https://static.ampcode.com/cli/0.0.1790934954-gaac027/amp-darwin-x64"
      sha256 "62b90334895a4bf940d3373368836bafad174af7c6609c13d170ab2f2252f28d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790934954-gaac027/amp-linux-arm64"
      sha256 "939f5fc0d8508cf598a7a56d0bf36979c582a2aa3f5bb1f48aa43cd7d29677c6"
    else
      url "https://static.ampcode.com/cli/0.0.1790934954-gaac027/amp-linux-x64"
      sha256 "a434d67d7b819cb48720b0900980081527e419f85412a6ee6d0dd2e54638e1ca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
