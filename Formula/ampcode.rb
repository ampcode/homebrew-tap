class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778276939-ge1345a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778276939-ge1345a/amp-darwin-arm64"
      sha256 "8cb588f3c5ca3be5126cd582200edffedb3088ef5c1a9b8b633c38e426d58320"
    else
      url "https://static.ampcode.com/cli/0.0.1778276939-ge1345a/amp-darwin-x64"
      sha256 "10aa4bea0e3c93f61249a26f5b1d3de4fd31957f9f53ab74da8f3ce8abdded97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778276939-ge1345a/amp-linux-arm64"
      sha256 "3387391503c1f356f9cd68ae7efe207234e2489794b239f0ec96ce3f93013044"
    else
      url "https://static.ampcode.com/cli/0.0.1778276939-ge1345a/amp-linux-x64"
      sha256 "320f75fc7a1793ce8f77e64b257f849c0ada853e8756ea3db0fa5518b9b3d36c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
