class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784350575-g714407"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784350575-g714407/amp-darwin-arm64"
      sha256 "aa05bde2159ff20d7b89ff4ad77628f9c252144110d3c2fa137cc5bb8b3d7682"
    else
      url "https://static.ampcode.com/cli/0.0.1784350575-g714407/amp-darwin-x64"
      sha256 "d1c7f8cae405b72e116994aafa7c54fdf69d4f98ffc57ec365c27deb1a7ec90c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784350575-g714407/amp-linux-arm64"
      sha256 "8d6cce3377bb63259a2a898b53c68c036557edd7cc5a456aefcc67fb70875826"
    else
      url "https://static.ampcode.com/cli/0.0.1784350575-g714407/amp-linux-x64"
      sha256 "c45793a4e6df1bcb51d0516ac02397e2bc1f64f77e4e62ccd89fdc74f911cdf8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
