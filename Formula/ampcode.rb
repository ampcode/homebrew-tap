class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771913294-ge1664b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771913294-ge1664b/amp-darwin-arm64"
      sha256 "2419a6be0574330326fc53e8eb2c6131ded75b7526d4edb6d61e41fd498af960"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771913294-ge1664b/amp-darwin-x64"
      sha256 "10371f7d8a123b2a9ab77183233bf82b1a40c18172c711b911744210941c963b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771913294-ge1664b/amp-linux-arm64"
      sha256 "cd6b07bd5ce954e403f7a10214265d28f54be36eb9617875d89eab70c7d28760"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771913294-ge1664b/amp-linux-x64"
      sha256 "7cab149512f1590692658ac3c761d862655f6613e803e1c9f9b327df45f1dec4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
