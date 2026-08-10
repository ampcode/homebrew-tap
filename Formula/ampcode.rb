class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786350568-g45006e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786350568-g45006e/amp-darwin-arm64"
      sha256 "b34b4010f9125ffe8b3b102f028fb0316935281787e959ae0af21ad479953f24"
    else
      url "https://static.ampcode.com/cli/0.0.1786350568-g45006e/amp-darwin-x64"
      sha256 "509ad0da72b5797c372254d03b9eedfea93b1254a77ea060bcc0d6963abed6b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786350568-g45006e/amp-linux-arm64"
      sha256 "8226835b66949d338f41944d10f5d3f338802d300efc7c064903bca5891543cf"
    else
      url "https://static.ampcode.com/cli/0.0.1786350568-g45006e/amp-linux-x64"
      sha256 "11c7840fce629e72b27c48f71b326f6ebe47bcdefce584f8597fce62dd9b5e40"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
