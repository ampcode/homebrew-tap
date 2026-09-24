class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790261352-g2ab14a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790261352-g2ab14a/amp-darwin-arm64"
      sha256 "89b06f3c3bf0540ece991bc9a18be5c8b61011675f91fe429f4565cf96057cb7"
    else
      url "https://static.ampcode.com/cli/0.0.1790261352-g2ab14a/amp-darwin-x64"
      sha256 "92c29bd6a1f0ce0b4f51e1b94432c4db916855ba7ff9ad26559e5e55999862ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790261352-g2ab14a/amp-linux-arm64"
      sha256 "943bae0a97393a8be2ee16cac2be65d9e899c21d2b990339b7a291868f609a2b"
    else
      url "https://static.ampcode.com/cli/0.0.1790261352-g2ab14a/amp-linux-x64"
      sha256 "7f85b5ed4a81ad79313703cff0e49140cee2f496abac02cfc069e2fe4d17f0f9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
