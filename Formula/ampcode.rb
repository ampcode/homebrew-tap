class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781793407-g66a636"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781793407-g66a636/amp-darwin-arm64"
      sha256 "d08f8b7f03264662a9a2ca386b3937cce868d123b428a5851ebbbbbc35db0654"
    else
      url "https://static.ampcode.com/cli/0.0.1781793407-g66a636/amp-darwin-x64"
      sha256 "1c7a1db630916d8809750958544d409fbd83ee61d930db5b8273b352e287d882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781793407-g66a636/amp-linux-arm64"
      sha256 "6afeb0946697c0adfbda669ea035c48c7a1ea1c9eb9d84173a472c27aef30e47"
    else
      url "https://static.ampcode.com/cli/0.0.1781793407-g66a636/amp-linux-x64"
      sha256 "f01f2f822ebbfe0c4bf1a4884ff7e9cbc2ffece5acff0105b43225eb59114c3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
