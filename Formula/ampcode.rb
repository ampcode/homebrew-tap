class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777566445-g595ffb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777566445-g595ffb/amp-darwin-arm64"
      sha256 "e52226db9ae3471cd794f0700546adfd7bf694778bbc36ed798e2ee43c232786"
    else
      url "https://static.ampcode.com/cli/0.0.1777566445-g595ffb/amp-darwin-x64"
      sha256 "916f8c5c6f2a274b6b458687b80cd854ceb5bbf20e2a56abb3b7b31309a2f545"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777566445-g595ffb/amp-linux-arm64"
      sha256 "9ab56514e3e5d29d1b0dcdf3ad9e74d551c36020a13f6b10b3264e9281055273"
    else
      url "https://static.ampcode.com/cli/0.0.1777566445-g595ffb/amp-linux-x64"
      sha256 "8794efe23675c7badb48079ebed8f0faf76b22f34dd31a3c87b79b24aec971ae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
