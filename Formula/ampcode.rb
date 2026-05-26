class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779786108-g751b94"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779786108-g751b94/amp-darwin-arm64"
      sha256 "da7781978bd0d6aed36fb10614055e64f9414a0b32786ed39c985e4d7bc4ec48"
    else
      url "https://static.ampcode.com/cli/0.0.1779786108-g751b94/amp-darwin-x64"
      sha256 "3125c32da3cc80f768ca12f2c4814eb8b236ad8efab96f87511f499b1a3ba878"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779786108-g751b94/amp-linux-arm64"
      sha256 "1392f32002e8080c1de58a830c7f929407cf8fdbe187d79972f7cf330b9ea643"
    else
      url "https://static.ampcode.com/cli/0.0.1779786108-g751b94/amp-linux-x64"
      sha256 "8db745c7797ee3064721aa1b1068f8001353c2dc8446cbe2b0d084045b5484cf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
