class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786996977-g9b9e2e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786996977-g9b9e2e/amp-darwin-arm64"
      sha256 "9988d76efd8b2dfc8efb42b2e2dc61fc1ddbd38f8ec1986d172eea099a168dfe"
    else
      url "https://static.ampcode.com/cli/0.0.1786996977-g9b9e2e/amp-darwin-x64"
      sha256 "e671e5b83aa20c473fc0ac6af2067a27c8f3b2a13b330cf3c522bc081917b63a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786996977-g9b9e2e/amp-linux-arm64"
      sha256 "0966f04e3813c6cff2d558ab1d39e15fc771cdc4a50ead7d14ad7f1ab0a2f84e"
    else
      url "https://static.ampcode.com/cli/0.0.1786996977-g9b9e2e/amp-linux-x64"
      sha256 "da3f00fd3fb8f69136f5978bf4039aea264bf05282d304b4fea4ce7696a44e03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
