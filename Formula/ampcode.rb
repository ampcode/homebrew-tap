class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778920904-g408447"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778920904-g408447/amp-darwin-arm64"
      sha256 "3d64323278dae4c34e8f1d387f21c9a2cda9911bd9aa0f53c32fcfea87b5bbcf"
    else
      url "https://static.ampcode.com/cli/0.0.1778920904-g408447/amp-darwin-x64"
      sha256 "bad243e2bdf18074c5d2d7664874bf122673457069f21b63f8d1c38500c5c4bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778920904-g408447/amp-linux-arm64"
      sha256 "f0bb83bcd0a7f38c82bee2b3cab2e55f4354da94b394a748d7524143237e0356"
    else
      url "https://static.ampcode.com/cli/0.0.1778920904-g408447/amp-linux-x64"
      sha256 "a0016966fb51cef33f52e901465c9ec40c897aee72817e405c34a9e9cac43e55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
