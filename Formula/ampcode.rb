class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774455710-g0964db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774455710-g0964db/amp-darwin-arm64"
      sha256 "4bc3555f57203ff2733348ba87047d29f47ca5d57416c0a3255903ddbe3578a0"
    else
      url "https://static.ampcode.com/cli/0.0.1774455710-g0964db/amp-darwin-x64"
      sha256 "68bc3d3378803b7762a76f92d5da33cddcbff8e0b58a1bff1b0b76977bbd48a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774455710-g0964db/amp-linux-arm64"
      sha256 "8b37addfd98e22bfa3da4dc7049cdb00b85a84d0b2c5e7e567aa1dfbe296d040"
    else
      url "https://static.ampcode.com/cli/0.0.1774455710-g0964db/amp-linux-x64"
      sha256 "464222d48265ae5016cfc348b97fe9db94ab7a755aeb17d80405a05369ee5bd3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
