class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775304231-g13b193"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775304231-g13b193/amp-darwin-arm64"
      sha256 "716eaba72290ddb8d27d2070e1eb599836758c640daeda3115a6fcf0742be3f3"
    else
      url "https://static.ampcode.com/cli/0.0.1775304231-g13b193/amp-darwin-x64"
      sha256 "0ca72d9891ce42709b4228242594d89eb19ece6358c41496655b9b27ae21e790"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775304231-g13b193/amp-linux-arm64"
      sha256 "dd6e8fb99f4f53b2aaf77f0ec7932240b7543bc8527f85b3d61e4ea3c2fd6cfd"
    else
      url "https://static.ampcode.com/cli/0.0.1775304231-g13b193/amp-linux-x64"
      sha256 "08e7319077a1c0f6be71693c8c1bf63d995023dd7eca8771c0e76aa834d5c7b6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
