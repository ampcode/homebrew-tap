class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790510440-gbb69cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790510440-gbb69cf/amp-darwin-arm64"
      sha256 "65ca1481ecf84b223e2106e2a39b31fdf57ed5d8a1814a8bc231eb32ad6fdf79"
    else
      url "https://static.ampcode.com/cli/0.0.1790510440-gbb69cf/amp-darwin-x64"
      sha256 "d2cba709c53f4d58b15a852cd21ed70baa3c044ea1b52d415fb0e48eca0d160f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790510440-gbb69cf/amp-linux-arm64"
      sha256 "d2faa0444316d257a7548c84d2026c89c836c77904bec63c61e846a0db8349af"
    else
      url "https://static.ampcode.com/cli/0.0.1790510440-gbb69cf/amp-linux-x64"
      sha256 "e6de506f000b0baf2f8bf5a4ae705c6aae8e714a3e10c2cccbbcd63525f3818b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
