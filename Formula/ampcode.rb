class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775665337-g3f871b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775665337-g3f871b/amp-darwin-arm64"
      sha256 "ca6e911fd55e203e0afbf177d194241b6d78eef275b1ffa1389875043e18baf0"
    else
      url "https://static.ampcode.com/cli/0.0.1775665337-g3f871b/amp-darwin-x64"
      sha256 "9ed7a57bcc8d39c1dc311b01fbe1bf7c15c0c03cdf5893abca2c167fdfdc92d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775665337-g3f871b/amp-linux-arm64"
      sha256 "67549490bf0ddc4c6d9ca9b81430808922f91266e980fefc8802400ba1c46f7c"
    else
      url "https://static.ampcode.com/cli/0.0.1775665337-g3f871b/amp-linux-x64"
      sha256 "9e8e540f26678177e8c41911b2d1a92ba202b9d8d4ac4b01784e73dcb0226dbc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
