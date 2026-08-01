class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785601100-g3a3229"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785601100-g3a3229/amp-darwin-arm64"
      sha256 "154c5630e0c83baf608ca5a9f8a0a64e2f623fb5ed8b9d2ff200e25b4b3f2754"
    else
      url "https://static.ampcode.com/cli/0.0.1785601100-g3a3229/amp-darwin-x64"
      sha256 "67d31c3e3d0f926ea17a92744d51a2ee3eeb9e00d68f868328addf886328ba22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785601100-g3a3229/amp-linux-arm64"
      sha256 "ea0306de9ff732df93d4b1cfc2a09c2aa3a1e10e3ae4e36b04ce66ec3d100265"
    else
      url "https://static.ampcode.com/cli/0.0.1785601100-g3a3229/amp-linux-x64"
      sha256 "e4721a45f7e84069dc4bf59155665e0863d16f23a690131b8651bde370bca6fb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
