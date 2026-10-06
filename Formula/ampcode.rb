class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791319628-gaa9b64"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791319628-gaa9b64/amp-darwin-arm64"
      sha256 "17eae70e7a9f97bff26df27e6c899525089d2fcad12893f1f172eef3c73ef154"
    else
      url "https://static.ampcode.com/cli/0.0.1791319628-gaa9b64/amp-darwin-x64"
      sha256 "67ff0023f1130bea3aaffc4fd7bc6faa2e4abe5832e552669f359cd11b9a74e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791319628-gaa9b64/amp-linux-arm64"
      sha256 "c5f9776f8bb5b447156570c8e0e40f3d06aa6c3160bbc4650042e575643fab5a"
    else
      url "https://static.ampcode.com/cli/0.0.1791319628-gaa9b64/amp-linux-x64"
      sha256 "f00e06c9a7a15090d13e091f8122e880aabaa0802ee765f1a1591c001d348bd4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
