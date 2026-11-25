class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795602934-gaeff24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795602934-gaeff24/amp-darwin-arm64"
      sha256 "c06a9b76000381e785b865afd7232a1cb107fb0da2523d78541e9eed90e9d88a"
    else
      url "https://static.ampcode.com/cli/0.0.1795602934-gaeff24/amp-darwin-x64"
      sha256 "ad41e8ccb65cc270abe0a34631db3cf302a179acbbdd9215bc36def28b919524"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795602934-gaeff24/amp-linux-arm64"
      sha256 "326c4f497047d29dea3e051b9ea160fc21c9875ecd80cd961adeb05897c74bb9"
    else
      url "https://static.ampcode.com/cli/0.0.1795602934-gaeff24/amp-linux-x64"
      sha256 "2b3bd152b605bab325d552ace5f7163056e470b4dd60ea8a8fd73c9630d5758b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
