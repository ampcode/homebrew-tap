class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784902288-g0b2dc4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784902288-g0b2dc4/amp-darwin-arm64"
      sha256 "c5f17ad28027e9e9d732c18cd98e51440148805b8d012d81d6827afcc7fbd81f"
    else
      url "https://static.ampcode.com/cli/0.0.1784902288-g0b2dc4/amp-darwin-x64"
      sha256 "8733ec611cfae901abe5a513f0e7d733ae728ad442cfc73dd70e834bbead20f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784902288-g0b2dc4/amp-linux-arm64"
      sha256 "deacd433f551b3b1ee203d8b451ee7b10d140eb6c6853933e1495c1857609daf"
    else
      url "https://static.ampcode.com/cli/0.0.1784902288-g0b2dc4/amp-linux-x64"
      sha256 "0706e8a654218fb97c3a92822ba28149e76c074132fc9637d0393cff673ca134"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
