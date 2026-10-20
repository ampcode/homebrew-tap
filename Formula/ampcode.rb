class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792482140-g9cce61"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792482140-g9cce61/amp-darwin-arm64"
      sha256 "ac93e1df9e4892b5dd97c180e7c97cd2900f0e9d53af6dc954a7e98bf1f4f6cb"
    else
      url "https://static.ampcode.com/cli/0.0.1792482140-g9cce61/amp-darwin-x64"
      sha256 "64308ef6bd9093fbc75c4a81c837ed6d2ea0ac067e7700ea703fe078932a0be4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792482140-g9cce61/amp-linux-arm64"
      sha256 "0cf3e0219c8d13e89886fd516176544d869a9e93889b93002d16be89b3771e0b"
    else
      url "https://static.ampcode.com/cli/0.0.1792482140-g9cce61/amp-linux-x64"
      sha256 "9775072cce6f980d3cbd7262e230b90f0b10fa5971aeaff213b52311aec6348c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
