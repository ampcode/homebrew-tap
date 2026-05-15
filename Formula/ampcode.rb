class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778888814-ge64a74"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778888814-ge64a74/amp-darwin-arm64"
      sha256 "28fffd8a52e2b09aa185c9b4fb2d5e7f395adf6be3866128edacd45273c26da1"
    else
      url "https://static.ampcode.com/cli/0.0.1778888814-ge64a74/amp-darwin-x64"
      sha256 "335e98eaded77ce7b352055437ab917c266522c330e07dd304612ebfe170d374"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778888814-ge64a74/amp-linux-arm64"
      sha256 "52549f94573ddc2348d84a8753542a25969b548d970b66dd05039903814b96d1"
    else
      url "https://static.ampcode.com/cli/0.0.1778888814-ge64a74/amp-linux-x64"
      sha256 "3dd90a1463f09fc8d445a82555ad9a3d246b39ad823a68ca11b4e9e01b6d9a54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
