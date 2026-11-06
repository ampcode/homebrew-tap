class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793980834-gbaaead"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793980834-gbaaead/amp-darwin-arm64"
      sha256 "6436889ab6d84aacc4acf442a76b7d11401dfc6cc806ec9bbec70a135175e810"
    else
      url "https://static.ampcode.com/cli/0.0.1793980834-gbaaead/amp-darwin-x64"
      sha256 "593a28e96b3384e886d182bb92c3fd459d8acd032c6831142e514796fd0a8f80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793980834-gbaaead/amp-linux-arm64"
      sha256 "e021f5adf615842556ba5fc8b7753bf0eb47efbd70efa20cee3b307f0d0bfe28"
    else
      url "https://static.ampcode.com/cli/0.0.1793980834-gbaaead/amp-linux-x64"
      sha256 "324436779b3ed5b11fac933d9f3b977f3ed175ec8d64833fc6e2863d3e5ee41a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
