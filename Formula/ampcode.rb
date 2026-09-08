class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788855325-g2dd76f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788855325-g2dd76f/amp-darwin-arm64"
      sha256 "b2ec7db8f6e8104478e57a566e3fc90765775941293b94cad96ce9493d165280"
    else
      url "https://static.ampcode.com/cli/0.0.1788855325-g2dd76f/amp-darwin-x64"
      sha256 "edc88e9723f77299a3e79390a31ac55cea3a37dbfeff0665ed0a0be6ae38d649"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788855325-g2dd76f/amp-linux-arm64"
      sha256 "f7096b8977b300f98fc96706bbbd4e185074a18bd26bbfc4674dd6da86cc9d31"
    else
      url "https://static.ampcode.com/cli/0.0.1788855325-g2dd76f/amp-linux-x64"
      sha256 "6f6314815df274659f16961457a5bf5292d211c91427fe92dd4e2064ac432560"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
