class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789607146-g57354f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789607146-g57354f/amp-darwin-arm64"
      sha256 "5aaa938a6b3a0568d8f05acdd019b1dcf77a0be0bd24da9442c22398d1718926"
    else
      url "https://static.ampcode.com/cli/0.0.1789607146-g57354f/amp-darwin-x64"
      sha256 "e0c8ce4ac9464155371c0dee995de148df2dadf4d26668d07c30cac2c5a11901"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789607146-g57354f/amp-linux-arm64"
      sha256 "acb68d85f92f36a8ddd1b57e99228fa58c2f8141a74d5f35a65ef4765c0a9448"
    else
      url "https://static.ampcode.com/cli/0.0.1789607146-g57354f/amp-linux-x64"
      sha256 "328872272409c6af9e3e674e7df2d89801320927d9691f7491e7b9146e2af43a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
