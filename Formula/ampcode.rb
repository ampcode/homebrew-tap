class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780770313-g0980e4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780770313-g0980e4/amp-darwin-arm64"
      sha256 "a25a8d30cd30e4ed8ad1b203db49212f33f16faec1abc2eaaf70863433a19b7c"
    else
      url "https://static.ampcode.com/cli/0.0.1780770313-g0980e4/amp-darwin-x64"
      sha256 "d3e830f27b3ab9bed10f006b038def6bd0f6e84478407b740f3a55a42d68a6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780770313-g0980e4/amp-linux-arm64"
      sha256 "40994e37927cc02e6320a8b6c279f559e813333cd4a31716d9753a704b8288dd"
    else
      url "https://static.ampcode.com/cli/0.0.1780770313-g0980e4/amp-linux-x64"
      sha256 "c8574c772769bc40ee0d852affb1ad38edc43a52f9bc1190b9a8ff7dad165485"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
