class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795795229-g667b86"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795795229-g667b86/amp-darwin-arm64"
      sha256 "debc8f3adaf9f514d1ddd14983fb513593522357f01e08f1097d49cd6d4372b9"
    else
      url "https://static.ampcode.com/cli/0.0.1795795229-g667b86/amp-darwin-x64"
      sha256 "af584896d205af02db202f62cfe565ccb91e9b957a4a7fa4b0008aea61517afc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795795229-g667b86/amp-linux-arm64"
      sha256 "2878d56b5837f249fdeb89d6949e69498862ea3f070e6ce64ba62b91dc74952b"
    else
      url "https://static.ampcode.com/cli/0.0.1795795229-g667b86/amp-linux-x64"
      sha256 "e641c503b5079acac2963bcc8f9a05c7b0b3d785e4e4a740b06cd3a61a157294"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
