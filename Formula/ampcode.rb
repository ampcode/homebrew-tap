class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777908050-g065ee9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777908050-g065ee9/amp-darwin-arm64"
      sha256 "d7af0ce68b8c7142582501d9bfe4dc280a2c5e5eb8505fc537b918f5d768ea4e"
    else
      url "https://static.ampcode.com/cli/0.0.1777908050-g065ee9/amp-darwin-x64"
      sha256 "1bd723dc7d1b97dc803fd9ad1844232de2189ba8bb31484ed9e9569d2529457f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777908050-g065ee9/amp-linux-arm64"
      sha256 "8d04d28a5e8a1fff2aaae2df11b8938fe1fa44c9f1ca94ec4e389313a418621c"
    else
      url "https://static.ampcode.com/cli/0.0.1777908050-g065ee9/amp-linux-x64"
      sha256 "b166fd287e30e66c052f0098de0baea16be30c794c1a8f768d379eb5f638a026"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
