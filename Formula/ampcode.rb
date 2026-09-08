class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788883237-g0b98e3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788883237-g0b98e3/amp-darwin-arm64"
      sha256 "6abbd79f48fa68216fe500ba6e8caf71eb22ce13504f68594e0c836b837d9403"
    else
      url "https://static.ampcode.com/cli/0.0.1788883237-g0b98e3/amp-darwin-x64"
      sha256 "a8544b1235060f89e2cedd1e5ede91f1762a3c66b32ba81f7ee80f13a7f032c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788883237-g0b98e3/amp-linux-arm64"
      sha256 "4d5432a316ec6f1b0e81b9c0a82bc6a0f7e14012e2b09027a7811a553915a2b2"
    else
      url "https://static.ampcode.com/cli/0.0.1788883237-g0b98e3/amp-linux-x64"
      sha256 "266d75106b8fcb71f96d495d53d958ecea5ef851e65dcd4929abe2f591c74f50"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
