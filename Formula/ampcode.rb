class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792166439-g8235ca"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792166439-g8235ca/amp-darwin-arm64"
      sha256 "11cc94a4803f7ec1d7442f7b5cc949ab678f388eaa2fcc780ec6ac17765b3402"
    else
      url "https://static.ampcode.com/cli/0.0.1792166439-g8235ca/amp-darwin-x64"
      sha256 "6f8750ae19770f4bfe37bbd5f4cfa4bc21c9fca44911895e1bff72845b292497"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792166439-g8235ca/amp-linux-arm64"
      sha256 "0cacd6b729a9716e87792b447fb8384df6a17d31e0918c1c58c51391218909b5"
    else
      url "https://static.ampcode.com/cli/0.0.1792166439-g8235ca/amp-linux-x64"
      sha256 "3d6c880d77be8395f36d538389a2b98ddd61feac73aadf6aa658017dcbb9e413"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
