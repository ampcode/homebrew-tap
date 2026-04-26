class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777185893-gae6d40"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777185893-gae6d40/amp-darwin-arm64"
      sha256 "35715fe1094a18240767490a136c49e521eef6acb1c2491f2f81af961fa47548"
    else
      url "https://static.ampcode.com/cli/0.0.1777185893-gae6d40/amp-darwin-x64"
      sha256 "fe8e792e70a5d769b443ae49fc23d0b9f9f972aff5157e72a23797f6d916673a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777185893-gae6d40/amp-linux-arm64"
      sha256 "b8037b6fe43c776ed2960351c75b5fd0e92955a0c25e89bee705cee66c6c8f1f"
    else
      url "https://static.ampcode.com/cli/0.0.1777185893-gae6d40/amp-linux-x64"
      sha256 "d4a856f9c4f225c5aed142441ea7c84d6ed7f1db8de0472537ef03690010b077"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
