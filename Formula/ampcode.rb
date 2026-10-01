class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790816272-ge96b2b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790816272-ge96b2b/amp-darwin-arm64"
      sha256 "16b858064a71cbfd0f680dfb2765e2b25bf3a27957fddfc0f32fedf79c207112"
    else
      url "https://static.ampcode.com/cli/0.0.1790816272-ge96b2b/amp-darwin-x64"
      sha256 "3074afd37a83082433dd0833a6fae323807b9300fa45067505762e07608d13b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790816272-ge96b2b/amp-linux-arm64"
      sha256 "f237015d326e99c70f907d6b6c97c199b6eaec2943d7fd1381fa8f72e1bbb90e"
    else
      url "https://static.ampcode.com/cli/0.0.1790816272-ge96b2b/amp-linux-x64"
      sha256 "fa409710f05921fda5addcef92d31064229c732a1cd812a32918266fd68b7e69"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
