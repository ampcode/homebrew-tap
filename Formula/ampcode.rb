class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792828848-gc7cca4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792828848-gc7cca4/amp-darwin-arm64"
      sha256 "757a4ac8bb403b477eba4a4509d3e2d23841177d7a9b1ff629f559b19d4c3985"
    else
      url "https://static.ampcode.com/cli/0.0.1792828848-gc7cca4/amp-darwin-x64"
      sha256 "0cd18c56e597cb7bf8e547d0c2d6645921ea7ad7b5755287e6b987938ae27eca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792828848-gc7cca4/amp-linux-arm64"
      sha256 "6dd4e1e65a2005ba72c9b44e27d20330a1dc5ea13e5da119724e56327aced3ba"
    else
      url "https://static.ampcode.com/cli/0.0.1792828848-gc7cca4/amp-linux-x64"
      sha256 "edc0da22440b8c4af5272e6a6d0bb353025d0da63134037a1d7d3ce0a0a6c7c7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
