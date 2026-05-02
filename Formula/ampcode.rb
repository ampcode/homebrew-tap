class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777710388-ge5e9da"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777710388-ge5e9da/amp-darwin-arm64"
      sha256 "65cf0972a498192763a7721df2ebe3253efec787fd9b5f41362785611f50ac92"
    else
      url "https://static.ampcode.com/cli/0.0.1777710388-ge5e9da/amp-darwin-x64"
      sha256 "630135ee50f9dabe2d2f9ed69124d2a40972679c7f99ca9bb0a55fbadab7346a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777710388-ge5e9da/amp-linux-arm64"
      sha256 "e0be4c7bf267aebc437865994b3e2c3e9cffff4f94715ff9ed572b6cedd647dc"
    else
      url "https://static.ampcode.com/cli/0.0.1777710388-ge5e9da/amp-linux-x64"
      sha256 "07b5a50a6a44a1d3d77629eb0ed8d0191fcc89aaf9313b6b4f973e66d228ddfa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
