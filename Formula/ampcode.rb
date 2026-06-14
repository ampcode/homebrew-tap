class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781443305-gb30fb3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781443305-gb30fb3/amp-darwin-arm64"
      sha256 "d01b45bd4a2756106c6b88f56b2e217a510e7c7b5e53d21983bcfa09bad3b55e"
    else
      url "https://static.ampcode.com/cli/0.0.1781443305-gb30fb3/amp-darwin-x64"
      sha256 "75cbf134e1a48c4784caa5c26b63bab23f52a1bd51f3401e7ebfd87ff3c8202a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781443305-gb30fb3/amp-linux-arm64"
      sha256 "83307e5d85b96bda115542b7dda6a5d7028395fc8bf74178078adc397cc07dde"
    else
      url "https://static.ampcode.com/cli/0.0.1781443305-gb30fb3/amp-linux-x64"
      sha256 "8df4533b873f0be4db23068fc5dca00f005569aa9f44ca8a1f589505cc1782b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
