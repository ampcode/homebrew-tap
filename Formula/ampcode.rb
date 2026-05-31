class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780205180-gf8ae7c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780205180-gf8ae7c/amp-darwin-arm64"
      sha256 "89d5de35c38bed454de0bc5619cc726f99632f2c1132077b0cbf83c3179f952c"
    else
      url "https://static.ampcode.com/cli/0.0.1780205180-gf8ae7c/amp-darwin-x64"
      sha256 "38af296f75740d2a528fb787ee3efff81fa700caa9e707ef96153e9730556d05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780205180-gf8ae7c/amp-linux-arm64"
      sha256 "0690c86db363219e7c1d4d289dd17412d37e1902b078495274fabe1b7da2def4"
    else
      url "https://static.ampcode.com/cli/0.0.1780205180-gf8ae7c/amp-linux-x64"
      sha256 "84a1b7a5d6eeb03bb694dd58ad61a4555ed0444f1079801987706b098f523c64"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
