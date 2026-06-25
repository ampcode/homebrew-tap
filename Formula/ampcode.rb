class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782422385-g1faecf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782422385-g1faecf/amp-darwin-arm64"
      sha256 "1ee7ea0c4deda7b91ccde43f85a7e0935d6dc583fde37866a474d4bf46807301"
    else
      url "https://static.ampcode.com/cli/0.0.1782422385-g1faecf/amp-darwin-x64"
      sha256 "d1546840b14f4bff84948cd0396c42461bed123082e270ebcd73ecb46276c611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782422385-g1faecf/amp-linux-arm64"
      sha256 "200d8d7fa26e0170cb57ba3d08c641064e8f044b883be13ec6ed78656c5a1b2f"
    else
      url "https://static.ampcode.com/cli/0.0.1782422385-g1faecf/amp-linux-x64"
      sha256 "db55d38de21ca8b1531442e49dcebfc1ae255748d1f3d2b7124edabf2da01fd2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
