class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792843238-g69ea1d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792843238-g69ea1d/amp-darwin-arm64"
      sha256 "6f61bd146924eb0feb1087c6e5584163127472f83e898bf5fe978b46b13dfc9b"
    else
      url "https://static.ampcode.com/cli/0.0.1792843238-g69ea1d/amp-darwin-x64"
      sha256 "43163bb15d0e629fc9028ac2aa6ae362bcff3982fa94c89bc467af50b80f8dda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792843238-g69ea1d/amp-linux-arm64"
      sha256 "8344a853b7fdf2d72895cca9f0ce96adc2900e0cedc1d14cd9544abd2183413f"
    else
      url "https://static.ampcode.com/cli/0.0.1792843238-g69ea1d/amp-linux-x64"
      sha256 "7fd42673144f4ca03cd796c91e94fa29f30f56f59d48c71ee19dbab70cfb7e54"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
