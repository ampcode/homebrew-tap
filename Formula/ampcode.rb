class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782470447-ge651cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782470447-ge651cf/amp-darwin-arm64"
      sha256 "746e9e523217c7ab559dd06bacc1b7cb4c2c67f61c0752b5d0e15ef217254e00"
    else
      url "https://static.ampcode.com/cli/0.0.1782470447-ge651cf/amp-darwin-x64"
      sha256 "5f97955c54b047505b3319be49a2bd0ba87bbcecb1f71a9d68da7c8ab220e5c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782470447-ge651cf/amp-linux-arm64"
      sha256 "40cf9c39b34bc38258a6a262ef14da690829de2f732bee0d8aa8e676fdec6986"
    else
      url "https://static.ampcode.com/cli/0.0.1782470447-ge651cf/amp-linux-x64"
      sha256 "47b926d1007015bd66f4c88aca726b896c85508ba59711d336d7c0e468ab8629"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
