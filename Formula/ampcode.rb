class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792397088-g3c824b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792397088-g3c824b/amp-darwin-arm64"
      sha256 "e9e0a3f6e67cc32490d0c9c9e46456bfefb3a124fa5d18fe4cec3544431d3b94"
    else
      url "https://static.ampcode.com/cli/0.0.1792397088-g3c824b/amp-darwin-x64"
      sha256 "bac93b8d64590d71bb50cf13c4dfe7d6234ea1453b91926193d071a0e2becf6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792397088-g3c824b/amp-linux-arm64"
      sha256 "1b47202e86cd046aae38cd6e98c7b2ef263b19f90579bb0d6410b51d78df7c4d"
    else
      url "https://static.ampcode.com/cli/0.0.1792397088-g3c824b/amp-linux-x64"
      sha256 "6bc520b5abf1e383ebfabdc6c84a8467df138a73c76ab826ce4b319360c28b7d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
