class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788984043-g8be0db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788984043-g8be0db/amp-darwin-arm64"
      sha256 "5632a9bdaf77d7c7c78a6d76f0ac7b97831aed4b6e6145dd628bffb0f4ccbf03"
    else
      url "https://static.ampcode.com/cli/0.0.1788984043-g8be0db/amp-darwin-x64"
      sha256 "5128e744539be1964bc5b59241ea4129215ffda5f02496163ff83bfc8b1244ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788984043-g8be0db/amp-linux-arm64"
      sha256 "686a5c9ce649eab1e5b87927e0117f54af331f48e8080e1f25b0194c962b7295"
    else
      url "https://static.ampcode.com/cli/0.0.1788984043-g8be0db/amp-linux-x64"
      sha256 "6edfd341b20b4c8961396a3ba4e6ed5bcdfc843a5e64e959345f6d25aaf8d985"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
