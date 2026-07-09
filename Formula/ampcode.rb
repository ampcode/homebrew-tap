class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783615235-g9cd8f4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783615235-g9cd8f4/amp-darwin-arm64"
      sha256 "de49efaf27454bba6e89f58ef2535feb6be5676990517c405297b18e618dc4e0"
    else
      url "https://static.ampcode.com/cli/0.0.1783615235-g9cd8f4/amp-darwin-x64"
      sha256 "77ed5a70e60f83f7442facf583610da53e5e817c0af0e81e3b628e723f6713c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783615235-g9cd8f4/amp-linux-arm64"
      sha256 "8edb31c6d9499835ad9963d2866cf649ccd3e6b45527c9af90f573f50c9fcc8f"
    else
      url "https://static.ampcode.com/cli/0.0.1783615235-g9cd8f4/amp-linux-x64"
      sha256 "0145526e46707e948a363f3250ec108418754b962fbe1b41f98f92997fd7f541"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
