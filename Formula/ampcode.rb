class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786403920-g1583b9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786403920-g1583b9/amp-darwin-arm64"
      sha256 "77e25622ef40b88f72dd0a9ad5a47940aae9269ae2b607633b344fa8ea30d15c"
    else
      url "https://static.ampcode.com/cli/0.0.1786403920-g1583b9/amp-darwin-x64"
      sha256 "6f72f41fac9f61df4aba1a690a72b7521b9dd87889030073209df6cb3731a7ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786403920-g1583b9/amp-linux-arm64"
      sha256 "ec8dc228fa4098b3b86534fb5626aea56b7bbd27e1ad75b9f64e2a268b1de5a0"
    else
      url "https://static.ampcode.com/cli/0.0.1786403920-g1583b9/amp-linux-x64"
      sha256 "aa17047b7852f74cc69816975f92575353118f823fa098a1f7f605d4e293b96e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
