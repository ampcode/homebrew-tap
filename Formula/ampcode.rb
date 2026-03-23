class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774240952-g432b79"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774240952-g432b79/amp-darwin-arm64"
      sha256 "4fd4217a7f911c5279e7767f8a4fc67b577b12bc48370ce69d13eede5d9fabdc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774240952-g432b79/amp-darwin-x64"
      sha256 "9fdbaf96c70caed28b530654a7bffd4c237b340e1316a6cd433d7726c3744bb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774240952-g432b79/amp-linux-arm64"
      sha256 "51c3e8bc90010edbfb3ac2a38e294dece0797bdbc4a19661e73a0c887ee1332f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774240952-g432b79/amp-linux-x64"
      sha256 "7354611be8e5130837dc284858247f9a72e371c32795e404be4b5543871142cf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
