class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782335767-g22f603"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782335767-g22f603/amp-darwin-arm64"
      sha256 "324f8a8c34f380c3fc6b05ad86e8e58dc268ff6dc69611d816eb572655e0e90d"
    else
      url "https://static.ampcode.com/cli/0.0.1782335767-g22f603/amp-darwin-x64"
      sha256 "10079583d5ca40d4dce6ac7541b2c27917e79b2f51701d851ad22135814a1caf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782335767-g22f603/amp-linux-arm64"
      sha256 "f4fc85461955623fa92ae372d59f21f2aca267e860adfc742deb21e34723c4e7"
    else
      url "https://static.ampcode.com/cli/0.0.1782335767-g22f603/amp-linux-x64"
      sha256 "43fd08f5060c0063f88ebc7856ef7e221c494b50710bb979f487142a22d8e738"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
