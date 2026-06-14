class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781402885-gd59ca1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781402885-gd59ca1/amp-darwin-arm64"
      sha256 "65ead875b32cceb2ea5b3c1ad13f71aa8eb24703a91d237af56ac8848bcea942"
    else
      url "https://static.ampcode.com/cli/0.0.1781402885-gd59ca1/amp-darwin-x64"
      sha256 "61a685b18e28fdb361fbc9b10c1c108099cf5d1fadf9dc27a4acdcf252fb711e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781402885-gd59ca1/amp-linux-arm64"
      sha256 "5a1052848be58294c9cec521c7e5c756caf84cd7bb1394acc0fecc88701b49bf"
    else
      url "https://static.ampcode.com/cli/0.0.1781402885-gd59ca1/amp-linux-x64"
      sha256 "a687a85da9c1322a3b049bd434c2e387985e8b0de6b04f85c566074cec6be04e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
