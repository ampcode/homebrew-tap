class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784363504-g8595bb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784363504-g8595bb/amp-darwin-arm64"
      sha256 "76a369f3b10e5b159d9f50a51f4968421c921180a98d6db6a07dd341b20d99ff"
    else
      url "https://static.ampcode.com/cli/0.0.1784363504-g8595bb/amp-darwin-x64"
      sha256 "3068f7825eb1602c4147db800abae3b3049137904f3cafaa689adf85c99652d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784363504-g8595bb/amp-linux-arm64"
      sha256 "3c5814ac183a166f412405a75bb3445392b40d6b3239cc56398d830405dc063a"
    else
      url "https://static.ampcode.com/cli/0.0.1784363504-g8595bb/amp-linux-x64"
      sha256 "387607b67080a555c1f724fb1fbdb86a0ad1e427cf3db84b4d14889d8a64a285"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
