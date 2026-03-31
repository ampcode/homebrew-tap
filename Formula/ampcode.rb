class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774945076-g24095c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774945076-g24095c/amp-darwin-arm64"
      sha256 "c2f092dbe6a770565e760f49753e187a0c4c11e763d1d80e2a33b64bcc55ed68"
    else
      url "https://static.ampcode.com/cli/0.0.1774945076-g24095c/amp-darwin-x64"
      sha256 "057976ea7cbea4caec7c99e901b505ff979fa5b7fd032610fe7c1f671efba0f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774945076-g24095c/amp-linux-arm64"
      sha256 "b8184fe88691811828ac3cf3af5d0e3a7001bdcd79587734fe98af4ce44aaeff"
    else
      url "https://static.ampcode.com/cli/0.0.1774945076-g24095c/amp-linux-x64"
      sha256 "b8c245d2f7cf16b4a9b1f13d1abb1a2e74c451fd882476d61f426404aff4ffa5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
