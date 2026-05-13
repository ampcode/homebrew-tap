class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778631508-g72c81a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778631508-g72c81a/amp-darwin-arm64"
      sha256 "c4f392473973ce6ae0a8032349861d8e5b8e12431510f6a925807a32f9fd04a4"
    else
      url "https://static.ampcode.com/cli/0.0.1778631508-g72c81a/amp-darwin-x64"
      sha256 "8fbe040b4ab4097dbbd605bdb2278b037dd552402c4de8c267683c29e6182b57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778631508-g72c81a/amp-linux-arm64"
      sha256 "6515140c907ed2bbdae32aacbf7cca1d762728d3118b33b350c5f846da8cf9a4"
    else
      url "https://static.ampcode.com/cli/0.0.1778631508-g72c81a/amp-linux-x64"
      sha256 "0fbcb88dd4982eceeac82c0d0c289c8d0921c433469772c0d4036eb8e7eb0181"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
