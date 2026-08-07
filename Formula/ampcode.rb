class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786114290-g72b804"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786114290-g72b804/amp-darwin-arm64"
      sha256 "0f28324ef1c7998005a8d6b8516659c089c2b7ec92091cd2e3424226277b11ff"
    else
      url "https://static.ampcode.com/cli/0.0.1786114290-g72b804/amp-darwin-x64"
      sha256 "4be0464b3187e07731eb2e5a2f69197c29fcedc2129f7276f8e812abd2230cdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786114290-g72b804/amp-linux-arm64"
      sha256 "7a1df059fa028fd824cbdf20b9524131a2c4731db3ce0e1fba851145f9339402"
    else
      url "https://static.ampcode.com/cli/0.0.1786114290-g72b804/amp-linux-x64"
      sha256 "0004ead03394297dd77a698ffb3e3fbb576fcc1a23b7ab58c4f3789fa678bf67"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
