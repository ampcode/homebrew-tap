class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775856303-gb0bac6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775856303-gb0bac6/amp-darwin-arm64"
      sha256 "df0e8eb3d765175778dd63e566091e52eeba9d18dd9f72ee46643146db9fe2aa"
    else
      url "https://static.ampcode.com/cli/0.0.1775856303-gb0bac6/amp-darwin-x64"
      sha256 "9ca6664e6386c1f0f0b486336874d0153611348f5137ad41bf62a0ca0c407006"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775856303-gb0bac6/amp-linux-arm64"
      sha256 "04a659338dedaf485f4b9d612aa4924d3746e0c6e72c35143966b4d74be2d512"
    else
      url "https://static.ampcode.com/cli/0.0.1775856303-gb0bac6/amp-linux-x64"
      sha256 "2a5c2ea2874253f41e0aa3b03909fc7c48bdaf4e09fd32889381009318ddee6e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
