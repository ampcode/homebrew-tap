class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780405472-g1bcd89"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780405472-g1bcd89/amp-darwin-arm64"
      sha256 "12745e85a3215008f9c40ed809e89c407e842712b4a634072055e41584924329"
    else
      url "https://static.ampcode.com/cli/0.0.1780405472-g1bcd89/amp-darwin-x64"
      sha256 "93d7113b3927533283d71c360d2115d34feb1708427eb49971d6796bc20c1fa1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780405472-g1bcd89/amp-linux-arm64"
      sha256 "e645b6982390091f513333f4b5e9d5f07eb73f3a08f80b17ebaf4b1dd06a8461"
    else
      url "https://static.ampcode.com/cli/0.0.1780405472-g1bcd89/amp-linux-x64"
      sha256 "b9197801ae9aec72ffcf6e2b252b1a0d54daf69a0753d8fcfc7dc2ad62c2e5bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
