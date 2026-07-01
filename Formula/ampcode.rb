class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782937912-g64a308"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782937912-g64a308/amp-darwin-arm64"
      sha256 "517e285020dad637c3e9dd0d36280b75b9f0af6a18ee50be3b718e2ef171f4e8"
    else
      url "https://static.ampcode.com/cli/0.0.1782937912-g64a308/amp-darwin-x64"
      sha256 "5c58a43fcf09674bdbe9afdffd548294bb377fdf785a5a4f23f46f30b3e25f54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782937912-g64a308/amp-linux-arm64"
      sha256 "5cac046a10cbe204d4582d405bc3611850fa213fa233c69f0e1632ac13e1ccbc"
    else
      url "https://static.ampcode.com/cli/0.0.1782937912-g64a308/amp-linux-x64"
      sha256 "c890eccab001fc6902ada1a58f733de3a739f59cb73aa508d2da746adccd9f8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
