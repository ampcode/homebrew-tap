class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780996715-gfa4135"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780996715-gfa4135/amp-darwin-arm64"
      sha256 "866dd19c7cd8315223983e43540e72c86a9d7e599bec25ba99eb05424f8608b6"
    else
      url "https://static.ampcode.com/cli/0.0.1780996715-gfa4135/amp-darwin-x64"
      sha256 "f681f4d3e4366230103cce2898a9de069ad35e0cac1b6a5b43f413e316115cd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780996715-gfa4135/amp-linux-arm64"
      sha256 "22a8793d340b6554b186ffe26edc3b9fe2cdce968fe7425995aec1f145ff7666"
    else
      url "https://static.ampcode.com/cli/0.0.1780996715-gfa4135/amp-linux-x64"
      sha256 "53340dca4535e40d6fdc2cf7d18ec3906e1cb9cd7b601d4c5f9fdd3ad36b1c27"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
