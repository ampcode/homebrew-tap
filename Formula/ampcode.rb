class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780551074-g00f758"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780551074-g00f758/amp-darwin-arm64"
      sha256 "8e52c0e01a4d7542b3921ad0e7f647aab3980b10f12046d06ddee1d8edb18a1c"
    else
      url "https://static.ampcode.com/cli/0.0.1780551074-g00f758/amp-darwin-x64"
      sha256 "29abcdcc392f8c72cfec9945e292136cc0edc070504786519100c4cadf707cd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780551074-g00f758/amp-linux-arm64"
      sha256 "28899869c15a51a32fbb8df6375bf7c7d29a7cb93a82140ca04866236fe242ae"
    else
      url "https://static.ampcode.com/cli/0.0.1780551074-g00f758/amp-linux-x64"
      sha256 "fe8a7c50770106dbc85390df96c4d6110cce368ed2ccca501de97120b9770378"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
