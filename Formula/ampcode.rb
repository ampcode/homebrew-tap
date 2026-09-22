class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790064360-g301b53"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790064360-g301b53/amp-darwin-arm64"
      sha256 "314d5ee5d99b109cf2d6a9d66ef37c0e501c69279cd6582a65b856c91406b51c"
    else
      url "https://static.ampcode.com/cli/0.0.1790064360-g301b53/amp-darwin-x64"
      sha256 "862368e4695602bbbf9fa97d6a8079bc435c84063c7ceccbb96f112108bb79c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790064360-g301b53/amp-linux-arm64"
      sha256 "e69d130aa0fcf1571f01a81d20588c911518a0f8fb6181c8353698df9f1f0ee2"
    else
      url "https://static.ampcode.com/cli/0.0.1790064360-g301b53/amp-linux-x64"
      sha256 "cb603e984ed453c4c5475a2951bd77b8079f703f8db256d33843e800085ca283"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
