class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791014446-g764146"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791014446-g764146/amp-darwin-arm64"
      sha256 "d38ba77e9ffcaae016b52e478160814352d3028fb5817d64e13a3f9057cebf31"
    else
      url "https://static.ampcode.com/cli/0.0.1791014446-g764146/amp-darwin-x64"
      sha256 "dadf8ad0e29f1d6d9fa88acae2470276c4a992fac5b60f77602aaf5d3ef39b56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791014446-g764146/amp-linux-arm64"
      sha256 "9f1d731625dad0279967185c6b6517c379c7194c3c28666e5942aeb45cd0b4af"
    else
      url "https://static.ampcode.com/cli/0.0.1791014446-g764146/amp-linux-x64"
      sha256 "829578078a7cd157f68bb358194c9047238160a9f0fea95ee69c69f799a96d72"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
