class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778012381-g86c56c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778012381-g86c56c/amp-darwin-arm64"
      sha256 "a7c972a3968e19c2a5793649cbd0c1edddf5cb31e9f3ad98f542fdab675efd31"
    else
      url "https://static.ampcode.com/cli/0.0.1778012381-g86c56c/amp-darwin-x64"
      sha256 "c40510fb388c5fb91e4f79957c51ff6e7f7fbac741812c312e66bf9a451a34dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778012381-g86c56c/amp-linux-arm64"
      sha256 "3dc5cabf4d7444afaae7813421a62f7ffac049f0718261c764032396e74d645e"
    else
      url "https://static.ampcode.com/cli/0.0.1778012381-g86c56c/amp-linux-x64"
      sha256 "a2729ffbde7aec1a361ec8233d63c9763d025aa3826235c089b511ed96e3aa0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
