class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790496040-gf80ac5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790496040-gf80ac5/amp-darwin-arm64"
      sha256 "4ab440a2297082b88c328b6e2b58ea14d617dc7a9ad5c1b799f909aee444b989"
    else
      url "https://static.ampcode.com/cli/0.0.1790496040-gf80ac5/amp-darwin-x64"
      sha256 "9ea62cb75e37bb050ca0cb170d863d90f51ac6a1854155273b2b232f2e745e8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790496040-gf80ac5/amp-linux-arm64"
      sha256 "f2835b7dc250702952b9bfd00141221970d04efe56b449bcf5fcddedb1912138"
    else
      url "https://static.ampcode.com/cli/0.0.1790496040-gf80ac5/amp-linux-x64"
      sha256 "544280331cef9aa70226e0fd8e29fc9c04184ebf3df6adb66650d8c315a6e266"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
