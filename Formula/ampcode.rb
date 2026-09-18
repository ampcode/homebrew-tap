class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789736830-g151f8f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789736830-g151f8f/amp-darwin-arm64"
      sha256 "6517d7709ad62d5150616929fd522916910730956f569b76cb5f600511ddc8c3"
    else
      url "https://static.ampcode.com/cli/0.0.1789736830-g151f8f/amp-darwin-x64"
      sha256 "dafee754e434f89b2e25f3e0e13dfcf5dbe8ece3243bba557ce5915b326389e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789736830-g151f8f/amp-linux-arm64"
      sha256 "99537f75d98a6717aaa2bb0b8a920fb9d99030d76c58d145ef1b12d8fed0bf25"
    else
      url "https://static.ampcode.com/cli/0.0.1789736830-g151f8f/amp-linux-x64"
      sha256 "6f5602b899de09fbf2b8c1cdf5c52fbfd676928e0a47c136888b64baf5a3a63f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
