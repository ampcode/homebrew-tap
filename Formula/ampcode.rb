class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774023013-g187610"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774023013-g187610/amp-darwin-arm64"
      sha256 "4e598060b616985e1415a1aed77d1d6d8172f3037132d9cead346524d0db31b0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774023013-g187610/amp-darwin-x64"
      sha256 "ca9ec88b0eaf64eeabf3ced6493aad1788ba41305019fce180bbcc2109fdd96d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774023013-g187610/amp-linux-arm64"
      sha256 "a466294ed0cf62318949f7a298358d92f57859ccc18830d8006eb69f4e9927a4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774023013-g187610/amp-linux-x64"
      sha256 "edbedb6d47deb60e15c266e7c0d91d62cb91e555debae4b2f80e2a2e1719db7e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
