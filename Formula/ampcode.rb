class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787400091-g3923ce"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787400091-g3923ce/amp-darwin-arm64"
      sha256 "6788f17adb04f10ae4cf794e71d591e8cdaa84570738f0eb6b4ce132743c023b"
    else
      url "https://static.ampcode.com/cli/0.0.1787400091-g3923ce/amp-darwin-x64"
      sha256 "92d57add63eaf54c7bb9ab2af8ca0b438b40e50665894f1cded8b4d650f4003a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787400091-g3923ce/amp-linux-arm64"
      sha256 "8879a93a57789288bb83ea0974833ba8721fb7662b4fabb57275e64c97b0b16a"
    else
      url "https://static.ampcode.com/cli/0.0.1787400091-g3923ce/amp-linux-x64"
      sha256 "b1db5a2931f1748cf38f3778d7b4ce4273c3b3bad91e884636e90288ed52bd08"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
