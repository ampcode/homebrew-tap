class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784463238-g66cb95"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784463238-g66cb95/amp-darwin-arm64"
      sha256 "df29a6b51be8b18bf64dc3ffb6025ec48bb908d42ead73ff4b73898f1d8037e7"
    else
      url "https://static.ampcode.com/cli/0.0.1784463238-g66cb95/amp-darwin-x64"
      sha256 "6a0084e81064bd699dd24bc991cd1cea7bd671448095872d4b89b210a50a9e09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784463238-g66cb95/amp-linux-arm64"
      sha256 "bf07713138181cadee896c80c6a3c5676c0a6c86c8eee0c8f2df118bcd197932"
    else
      url "https://static.ampcode.com/cli/0.0.1784463238-g66cb95/amp-linux-x64"
      sha256 "93da6e1bd338d361bb2ff4307897d487010692d47071d4785b1d315e69efff2b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
