class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790326573-g118813"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790326573-g118813/amp-darwin-arm64"
      sha256 "9bf8e8fdc8e49e73694ceaf902ed847ecd848eb0a1354447d1965cc2d428fc63"
    else
      url "https://static.ampcode.com/cli/0.0.1790326573-g118813/amp-darwin-x64"
      sha256 "e2aad4d9e2a6071376251a39435648089b83d50240b32b8d8b7c9472fc152bc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790326573-g118813/amp-linux-arm64"
      sha256 "edf1184fb851b077d06e80d25d2aabcd1f045d481a8b17541d976f6344865619"
    else
      url "https://static.ampcode.com/cli/0.0.1790326573-g118813/amp-linux-x64"
      sha256 "4b9c0182acd40df490b2a5c611a422df7cfbdd1c1f7d69d8f13c372bd92b2eb4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
