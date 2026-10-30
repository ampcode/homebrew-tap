class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793363705-g5c9ae5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793363705-g5c9ae5/amp-darwin-arm64"
      sha256 "eb3fd4a0cb9b287441384d304717a5f2845f03095ed5271ddf39e28c7c40f495"
    else
      url "https://static.ampcode.com/cli/0.0.1793363705-g5c9ae5/amp-darwin-x64"
      sha256 "f34abc1bcf945238e1c4518bca958475c919a88718b7c54c5a6cdf4f01334c57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793363705-g5c9ae5/amp-linux-arm64"
      sha256 "af60f1d306343191a8472e9a0ce719ab41010fe699738ac1c10ef0f531b96ecc"
    else
      url "https://static.ampcode.com/cli/0.0.1793363705-g5c9ae5/amp-linux-x64"
      sha256 "c6e6f9e61b54db0971116177596518053582924f405b858cc318669a180793df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
