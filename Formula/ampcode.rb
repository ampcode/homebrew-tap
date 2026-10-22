class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792627309-g98c009"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792627309-g98c009/amp-darwin-arm64"
      sha256 "dc6322b6afa01344ca4bbeb454460f20554756cc54d1bc114d08140966861698"
    else
      url "https://static.ampcode.com/cli/0.0.1792627309-g98c009/amp-darwin-x64"
      sha256 "95c9c47349ab9ce5bbd4f09a4479c6a5ef71bc5684501e8a427a507167a6b447"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792627309-g98c009/amp-linux-arm64"
      sha256 "e9fd688f462a085b597eeedc3fa70b1259ad264461d3012f4cf5855e6a5a81d1"
    else
      url "https://static.ampcode.com/cli/0.0.1792627309-g98c009/amp-linux-x64"
      sha256 "390c71c91d93bd00b332f0cd5c740260aaf819563715d155be13b9c1be2c11be"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
