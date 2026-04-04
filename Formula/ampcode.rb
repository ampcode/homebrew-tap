class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775290109-g13b193"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775290109-g13b193/amp-darwin-arm64"
      sha256 "e4b1ba4946236b16cd89aeb5ee9ba9e2c692e7d0f1ed38c5917a33da2ec23715"
    else
      url "https://static.ampcode.com/cli/0.0.1775290109-g13b193/amp-darwin-x64"
      sha256 "d20b57f85b1196740bd3e36f273949f0faf2dc62fd0a4e3c6c85080a80bc7c83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775290109-g13b193/amp-linux-arm64"
      sha256 "edd6fb1a65510731dd9306a6674b5ee28eed091d95556ad7d44d5903a32928ed"
    else
      url "https://static.ampcode.com/cli/0.0.1775290109-g13b193/amp-linux-x64"
      sha256 "d7cc0a07141f97c33d4ced8236857dd53759709b3015657ade7b438c9d415fa9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
