class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781776362-g83ddba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781776362-g83ddba/amp-darwin-arm64"
      sha256 "cfc9f8aeab1b7824050c46f9d54d2e5e14d2a5d3a4e5ea61fe06e72664f199f8"
    else
      url "https://static.ampcode.com/cli/0.0.1781776362-g83ddba/amp-darwin-x64"
      sha256 "2b209a38254e449154bdd435d18dee1cc11c65f83217aa89616bcd8006270cb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781776362-g83ddba/amp-linux-arm64"
      sha256 "5d191aa78c21cc81e0639cca547a7b418e1084527685ddc7cf5070f61d09ec3d"
    else
      url "https://static.ampcode.com/cli/0.0.1781776362-g83ddba/amp-linux-x64"
      sha256 "a490f65c2229fef506bd4392e5a449aaf6c41024764c616f6b4f360dafc475b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
