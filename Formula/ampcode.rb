class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773360219-g15db7c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773360219-g15db7c/amp-darwin-arm64"
      sha256 "835a1a213f6ad422f812d61f77f541f463d8fac33272b0b2da957a96f1f34bf6"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773360219-g15db7c/amp-darwin-x64"
      sha256 "61298f20808981a36cb4cca7f9cb0a171c4c7a4c6d4ee0139ce4a994dfe18977"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773360219-g15db7c/amp-linux-arm64"
      sha256 "9819104f44d73a2a06245107f6c2aee6539ac39d96cac0360a753b5c9551889a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773360219-g15db7c/amp-linux-x64"
      sha256 "53a18e6c75c787add26f34a27eae9b028e2670d6df672449b1aa15d2321814aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
