class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773425987-gff03c8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773425987-gff03c8/amp-darwin-arm64"
      sha256 "bb92d96bd17ecbe0cfe636d3334bcec2661f8fbe983eb32a04a268c2644e4019"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773425987-gff03c8/amp-darwin-x64"
      sha256 "e91a5ea23866d358ab32926faae47dd0047470807d78a58f9f07882da66dabb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773425987-gff03c8/amp-linux-arm64"
      sha256 "21b6c670d50a967e19c2807175fc24ef4c375214fefed64b5304fabe239c8af0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773425987-gff03c8/amp-linux-x64"
      sha256 "5c2d9326a099b42c68d20532a2fedb9c87f2509e300081c9564946bedb86c259"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
