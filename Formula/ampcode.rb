class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778746004-g2bc7d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778746004-g2bc7d4/amp-darwin-arm64"
      sha256 "03c3840732b68b54cd5d44cb9b165f053e531f58a4d2cec602cc549ef67d0d09"
    else
      url "https://static.ampcode.com/cli/0.0.1778746004-g2bc7d4/amp-darwin-x64"
      sha256 "c1ca8fbc8c908db8b26b2d4a4c5487652ea7ff8d7093555c60ff13666b58d9a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778746004-g2bc7d4/amp-linux-arm64"
      sha256 "89a60ce857330ddd072c53067e2204c368e71be6bda70452b62cadf76fef65dc"
    else
      url "https://static.ampcode.com/cli/0.0.1778746004-g2bc7d4/amp-linux-x64"
      sha256 "077cafdfd22376e745b2e4eba3b7fd9380239c84259ae515eb48ba5c4404431a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
