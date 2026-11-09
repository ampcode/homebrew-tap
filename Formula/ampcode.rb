class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794225648-g45053b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794225648-g45053b/amp-darwin-arm64"
      sha256 "a341e2c25d3bcca54cf3afc17cb6b48ec1af249c5dd2921e169bd450fa267fe7"
    else
      url "https://static.ampcode.com/cli/0.0.1794225648-g45053b/amp-darwin-x64"
      sha256 "2350c675cb33bbed84b48ef00202032cd63e3e516a807373244717fb373ec015"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794225648-g45053b/amp-linux-arm64"
      sha256 "fa35c4f59e5557f527557bb342ed7cbe678d0c112f3de2ac1dec0bd9d1929f84"
    else
      url "https://static.ampcode.com/cli/0.0.1794225648-g45053b/amp-linux-x64"
      sha256 "59494972c31ae05376329439e648a153aaf7cf1d46167e0a18464f78a41ae5e0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
