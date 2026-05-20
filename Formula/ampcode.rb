class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779276258-g885d87"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779276258-g885d87/amp-darwin-arm64"
      sha256 "4c93d4f434df4f2473e00c91865ca33da13b963d8a1c9f81b2bd69c82dcd5990"
    else
      url "https://static.ampcode.com/cli/0.0.1779276258-g885d87/amp-darwin-x64"
      sha256 "c7521ed098b3a7cb21d758b8f290415297cf2e57c3433612236f19acbd7be270"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779276258-g885d87/amp-linux-arm64"
      sha256 "933704032841b3a502c99f6b082fd92f480f47b51c95e4fe3b1ca00acdb15ef6"
    else
      url "https://static.ampcode.com/cli/0.0.1779276258-g885d87/amp-linux-x64"
      sha256 "bc9be44b4bd429ed182b61dafb131fb68c780f9fb3bfe3afe11b7e4902757665"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
