class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778690586-gc422e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778690586-gc422e9/amp-darwin-arm64"
      sha256 "6a1b57780142060bac9a9e1c021c162923002bd750757f2af36dde099e674705"
    else
      url "https://static.ampcode.com/cli/0.0.1778690586-gc422e9/amp-darwin-x64"
      sha256 "225c6ff7d5a8ca969c627639b803bc62e48c255c68d2e679909f1c78822e03d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778690586-gc422e9/amp-linux-arm64"
      sha256 "5d8175e6ee22a25f88ebd98880ae400d0d29ca5cd7bc69371dd2bf6c62cc8446"
    else
      url "https://static.ampcode.com/cli/0.0.1778690586-gc422e9/amp-linux-x64"
      sha256 "583453c58f49f5635c92bb356fead0ce66ee05b82a80e0c66a7a6bbb3377547f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
