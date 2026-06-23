class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782179629-gbb67c1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782179629-gbb67c1/amp-darwin-arm64"
      sha256 "ed64a5f89ebece86dc05866b837da527e8842ad2d5e13413abe5cfb5ebc77c2b"
    else
      url "https://static.ampcode.com/cli/0.0.1782179629-gbb67c1/amp-darwin-x64"
      sha256 "de9c7eed5b5c1e8a7d1971b0d673cfce117dcfe579947e2e4fde3a6fb3c38000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782179629-gbb67c1/amp-linux-arm64"
      sha256 "5ce2182b2c0c57637b68f3b162a4b65dd9a972418293a6a93f348ec616528634"
    else
      url "https://static.ampcode.com/cli/0.0.1782179629-gbb67c1/amp-linux-x64"
      sha256 "56fc69baccdf66110c15960767a36667632f8bbf87ce99479d6c0760f8785dc4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
