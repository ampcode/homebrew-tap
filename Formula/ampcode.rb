class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790164843-gc57770"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790164843-gc57770/amp-darwin-arm64"
      sha256 "074faae5601fde6c93806c43bbf475294cf884eeb6491663a50178b2b7b7d0e9"
    else
      url "https://static.ampcode.com/cli/0.0.1790164843-gc57770/amp-darwin-x64"
      sha256 "3b0de64604218587f85a6c639c21d3c5fdfb1638a8d0f30fcfe91f6ea5d325a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790164843-gc57770/amp-linux-arm64"
      sha256 "55947a2f4a2d2c35d971f14b367caf0fd4f8f3344fce10076a55129b8eb60978"
    else
      url "https://static.ampcode.com/cli/0.0.1790164843-gc57770/amp-linux-x64"
      sha256 "dd85c523dd172a6f40fc0d55194dfeca043b536fd100b22a56444f8156cb573d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
