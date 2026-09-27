class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790514351-g31bd59"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790514351-g31bd59/amp-darwin-arm64"
      sha256 "e12666331a2d935df0167ccd8f54c1b124e210323ac527a9e3a1368d08a7e8bf"
    else
      url "https://static.ampcode.com/cli/0.0.1790514351-g31bd59/amp-darwin-x64"
      sha256 "595998dc6e0162812b8839430d745c84f6244cc6df5cd4668fcc22de8fc8067d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790514351-g31bd59/amp-linux-arm64"
      sha256 "4eb3ace10d4500e2b52ca06d63c71ac924ca6c142202a6cbf8186d0f5efde473"
    else
      url "https://static.ampcode.com/cli/0.0.1790514351-g31bd59/amp-linux-x64"
      sha256 "86d7b11d00f8ea0fbca15add7b26e566c037c43cec7631b4d53e690d19acc030"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
