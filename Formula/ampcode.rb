class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788724845-g756d1c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788724845-g756d1c/amp-darwin-arm64"
      sha256 "85339e92b398e4593a5b3c9a20ffba96015c88cd3b3c9ea379e9c195ce759a0b"
    else
      url "https://static.ampcode.com/cli/0.0.1788724845-g756d1c/amp-darwin-x64"
      sha256 "dae038516899e4d2cc0bbe5695ec61073df4dd26220c3a80b880cd43b7571ac3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788724845-g756d1c/amp-linux-arm64"
      sha256 "8e748c21a7dad839e647452febfd43d857ab5844bfd4811df77b6e07a094316e"
    else
      url "https://static.ampcode.com/cli/0.0.1788724845-g756d1c/amp-linux-x64"
      sha256 "125b02de6ce328538e09a3e4ff310a6dde61c7d4112a55f2b7b441952da203dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
