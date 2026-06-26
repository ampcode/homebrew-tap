class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782456406-gc6aea3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782456406-gc6aea3/amp-darwin-arm64"
      sha256 "4558a333c61dca5bf5a4eec424964c41ded8d00272dc5b160fa37658f0019bfa"
    else
      url "https://static.ampcode.com/cli/0.0.1782456406-gc6aea3/amp-darwin-x64"
      sha256 "c0d406e6f8e5115e448b0bbf987c5435a0b75240c8a928607e85b525350bce54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782456406-gc6aea3/amp-linux-arm64"
      sha256 "a187fe0eec76a8cb5bf06ff1a5465c4cb86132af17deed203b99c20a0a5785dc"
    else
      url "https://static.ampcode.com/cli/0.0.1782456406-gc6aea3/amp-linux-x64"
      sha256 "1703445afd32ddd78698f86349091820094d7ca24425fc800b2974133bbb9de3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
