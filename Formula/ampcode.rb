class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795262446-g9f3ad9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795262446-g9f3ad9/amp-darwin-arm64"
      sha256 "04fdc3926d315692585f2b386320e659ac9eb739dd386f68b9e1f6cf7b375d55"
    else
      url "https://static.ampcode.com/cli/0.0.1795262446-g9f3ad9/amp-darwin-x64"
      sha256 "332799167a825c49a90e66f56830294f8d6e6c31bb5bc41db698827bff2b42d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795262446-g9f3ad9/amp-linux-arm64"
      sha256 "c967f4175cc80b0468d59482b2c21ee146215d82ee1f43bae32d3b823418e28c"
    else
      url "https://static.ampcode.com/cli/0.0.1795262446-g9f3ad9/amp-linux-x64"
      sha256 "486a2632a4b382a0fd0d6564bbebdd9d8dc333c0d286ab4aaf266a83a5cc5466"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
