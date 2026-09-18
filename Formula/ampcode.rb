class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789764455-g07cced"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789764455-g07cced/amp-darwin-arm64"
      sha256 "22dd44d4695cbd9dfbce6be2e66d15162d3334a599e11e4c249cb4ec8d356c62"
    else
      url "https://static.ampcode.com/cli/0.0.1789764455-g07cced/amp-darwin-x64"
      sha256 "cbded53bb9636640632491c4b789315a4737d3707547d21bcdaace40bfe097bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789764455-g07cced/amp-linux-arm64"
      sha256 "e6a17d0363f25e8f6b7f061d4d6e92c0727ec8a3684a2bbbc08c1dd8f3094cc8"
    else
      url "https://static.ampcode.com/cli/0.0.1789764455-g07cced/amp-linux-x64"
      sha256 "a7f888f48392ff5c3b698ebc1aa244003e95f65263541c18a1da011c7aa104c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
