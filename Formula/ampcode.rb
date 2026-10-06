class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791259278-gaa84b5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791259278-gaa84b5/amp-darwin-arm64"
      sha256 "ab99f4c139c8b70d846db096fca196cd20e9e01b03b43f9eadf4ee3ce9d45a63"
    else
      url "https://static.ampcode.com/cli/0.0.1791259278-gaa84b5/amp-darwin-x64"
      sha256 "21ccac90f589aa057d1a5e06436e43623836c9121d9d103e707f2927656b82c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791259278-gaa84b5/amp-linux-arm64"
      sha256 "1e1ebb84452d45809ec688da4c09b9942eb39b0f3be87bdb6568aab6e9acee26"
    else
      url "https://static.ampcode.com/cli/0.0.1791259278-gaa84b5/amp-linux-x64"
      sha256 "43b161719bf9938ca60d0d7886400206abff6b65debe6ebca3e30fb449292e77"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
