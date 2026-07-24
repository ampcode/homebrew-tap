class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784917055-ge644b2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784917055-ge644b2/amp-darwin-arm64"
      sha256 "c75c4dc98e330a03b37ae79f39c638e9966c95bae3569ec5d005cbcd1ede0bda"
    else
      url "https://static.ampcode.com/cli/0.0.1784917055-ge644b2/amp-darwin-x64"
      sha256 "c050a5c658cfbee19f33515f69b9784ce777391cadf65b2a948ae30c9975c349"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784917055-ge644b2/amp-linux-arm64"
      sha256 "a4ee82e1755c3a921736308900fd7d5bdc5d0206c1269b4d1fd200aa26da4e28"
    else
      url "https://static.ampcode.com/cli/0.0.1784917055-ge644b2/amp-linux-x64"
      sha256 "6cc1133edaa924cdbecc7b68722252b19e0086f372011bf366c6bf5262649c55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
