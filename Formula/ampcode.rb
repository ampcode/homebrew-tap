class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786242309-g682c65"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786242309-g682c65/amp-darwin-arm64"
      sha256 "6569da977dcde67566e47d3f56758147d03a5ce99816c3be47c67e51046cd394"
    else
      url "https://static.ampcode.com/cli/0.0.1786242309-g682c65/amp-darwin-x64"
      sha256 "4919c7d1097ba42d9dc5642bf2d1bdeef9be7c7fb2075d236c137e820516da86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786242309-g682c65/amp-linux-arm64"
      sha256 "406c4aa015b55fcc0854f9f1ebcb43470aa9f87012c567f005e633578a9caece"
    else
      url "https://static.ampcode.com/cli/0.0.1786242309-g682c65/amp-linux-x64"
      sha256 "3700dbc04873b05480d2e124e0dfde84ee7441a59849cd598767003f1c0e12de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
