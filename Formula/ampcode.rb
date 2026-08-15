class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786752172-g5bf5f5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786752172-g5bf5f5/amp-darwin-arm64"
      sha256 "37b2a598861c5627089dd0ae9a92ad3ce02ae80c987fac22202ac29c91833a3b"
    else
      url "https://static.ampcode.com/cli/0.0.1786752172-g5bf5f5/amp-darwin-x64"
      sha256 "abe023f2d865ed400167daec28e625211429e797c5a177b6228410623e105266"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786752172-g5bf5f5/amp-linux-arm64"
      sha256 "361e00561c678a57154b3098066977847b07f80275949e3034ed3c46f69b8a4d"
    else
      url "https://static.ampcode.com/cli/0.0.1786752172-g5bf5f5/amp-linux-x64"
      sha256 "4c26eb6b708fefab107551f8ee71aae1b15ae19bb911db52dd531ad2017508f3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
