class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779368167-gd779a5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779368167-gd779a5/amp-darwin-arm64"
      sha256 "226bd47cd96ca4820a47f55a800071b9b4be554579d93e86fe9b633b73bb9226"
    else
      url "https://static.ampcode.com/cli/0.0.1779368167-gd779a5/amp-darwin-x64"
      sha256 "c62fdfbd604fe73f3f2901e4e662b687c789abdbc32dc82c6e198d024322b0f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779368167-gd779a5/amp-linux-arm64"
      sha256 "5e481489cc2ab1294b9d3bf7df36fce791f1bd328596fd241ae43631a22ec44e"
    else
      url "https://static.ampcode.com/cli/0.0.1779368167-gd779a5/amp-linux-x64"
      sha256 "c6d92d73fc4aba6f94f9f3c9a4e035201e3acfb24a5942218a9e77de34b01dfc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
