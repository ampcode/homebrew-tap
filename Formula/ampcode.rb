class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790603400-g668411"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790603400-g668411/amp-darwin-arm64"
      sha256 "d82344895d66ef2654d0b60dc39377849f9ec48a809d79a4ed198abe21746c35"
    else
      url "https://static.ampcode.com/cli/0.0.1790603400-g668411/amp-darwin-x64"
      sha256 "8edda298419e7bd97749d53d0b4a5e3c25f9997ac61fdcf295a2eb2179733472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790603400-g668411/amp-linux-arm64"
      sha256 "d19df50bfa03514ba558c884d756bb7b64682a118b366451cfdc33b2c8a76c31"
    else
      url "https://static.ampcode.com/cli/0.0.1790603400-g668411/amp-linux-x64"
      sha256 "3cdd64f05fcbc40ca04bafb1ed75c98f11a42982e2dde85cef97736475600891"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
