class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784264425-g070593"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784264425-g070593/amp-darwin-arm64"
      sha256 "53c5ecc62fdbd7aa59b18f2d7b1261bc1a15e783af82ce5d741f3470d0d21280"
    else
      url "https://static.ampcode.com/cli/0.0.1784264425-g070593/amp-darwin-x64"
      sha256 "72055c3b924cbca45a40773b04befc241d7995a68c3cc3c2567296681ed24382"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784264425-g070593/amp-linux-arm64"
      sha256 "86418d2d84e7703858e53649075ddece6e511edaad4daa1d3e84791844caf666"
    else
      url "https://static.ampcode.com/cli/0.0.1784264425-g070593/amp-linux-x64"
      sha256 "55a46d49933e4f9d96d2807d76034cc036bae07675507801d1f73880c9621580"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
