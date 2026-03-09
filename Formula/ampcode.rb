class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773043670-gfff8f2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773043670-gfff8f2/amp-darwin-arm64"
      sha256 "9248a6598a4d83df30920233189763bd0bf27f42fdb491f09955e8609a5e8006"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773043670-gfff8f2/amp-darwin-x64"
      sha256 "007cea1a057cf30b026b0cf3871e493ea3737e6454eed48e3b482c77129cc53f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773043670-gfff8f2/amp-linux-arm64"
      sha256 "c28aa570e9d1a69e65e0205d70fd374efce6fe4d8d56601d4736629f5aa005aa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773043670-gfff8f2/amp-linux-x64"
      sha256 "743b0178a36a3412cf8b2f52e5454ea1fe4ec937e7068df7f700889076ab159b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
