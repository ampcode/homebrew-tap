class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782459597-g5a6168"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782459597-g5a6168/amp-darwin-arm64"
      sha256 "7443492f2315a610905dbc29cecafd259bbd929bb30feece4ed8bcf997bff70a"
    else
      url "https://static.ampcode.com/cli/0.0.1782459597-g5a6168/amp-darwin-x64"
      sha256 "759b9e128c8a3a6c8ae621d590dc95ef170a346a2e427959130e0d788cec75ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782459597-g5a6168/amp-linux-arm64"
      sha256 "be6593172697cf9190c2a3f4948d90d3cf82f39d6ee1f6a84125e25d260f5200"
    else
      url "https://static.ampcode.com/cli/0.0.1782459597-g5a6168/amp-linux-x64"
      sha256 "d4dd6c3a46425ecc8338303f5de53fc6f72931085b8bd50a54462eaa19ff4429"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
