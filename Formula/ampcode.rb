class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784515842-gba947c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784515842-gba947c/amp-darwin-arm64"
      sha256 "d042869f963b8f624f429c796449cc7b38caf61159b6a3bd9102d590362b0762"
    else
      url "https://static.ampcode.com/cli/0.0.1784515842-gba947c/amp-darwin-x64"
      sha256 "0bbc3516b2e227f1bbc7d78ac7fd43c5c9c4b663188f2ece4830a4ada2c2d215"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784515842-gba947c/amp-linux-arm64"
      sha256 "3af419d9a1d25c325bd08848af779ad823436eeff25871ae29c6c7fa6a01217f"
    else
      url "https://static.ampcode.com/cli/0.0.1784515842-gba947c/amp-linux-x64"
      sha256 "90a4e45241a33d0977257a4d9242143ddc1c7fa61915bbb29cbae1cc93af2bd8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
