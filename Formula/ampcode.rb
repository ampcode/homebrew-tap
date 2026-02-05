class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770299022-g25f718"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770299022-g25f718/amp-darwin-arm64"
      sha256 "f6930acb535cff2bf7e816327ddd6712fbf84c5250a47e3e1301a4600affd655"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770299022-g25f718/amp-darwin-x64"
      sha256 "adfac8a4a3d2c33279b7d451c8afefda728fee7c74f49a8be9ff9ac014187d6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770299022-g25f718/amp-linux-arm64"
      sha256 "c20f25c8f06a6922e11d7828e2b4201abb10f8fca831309996784d909e2099f1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770299022-g25f718/amp-linux-x64"
      sha256 "21202f34d833fe959bc34b4239db0ddf46961f3b4d31bd3ffb0e4ba811a9b0d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
