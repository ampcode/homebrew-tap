class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787559091-g4e7735"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787559091-g4e7735/amp-darwin-arm64"
      sha256 "20d3526c3c1bc46d78c2bb0c797a6c1265e8d4b8f230583add5748ec17e007b6"
    else
      url "https://static.ampcode.com/cli/0.0.1787559091-g4e7735/amp-darwin-x64"
      sha256 "452e87d9f07e8a15b788443f9ea807f4f9439d479eb091a856ac00c10ae62f72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787559091-g4e7735/amp-linux-arm64"
      sha256 "7be2950f29e2b8b6bb187cc17d0648df07102e33cb7054dbd2684f25c6b53a44"
    else
      url "https://static.ampcode.com/cli/0.0.1787559091-g4e7735/amp-linux-x64"
      sha256 "008b7b5fc01c219ed14ec590802e7044e2ec2d799d0019b8a6e7afdf08ef5fd6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
