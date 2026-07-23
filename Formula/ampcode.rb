class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784765892-g7ff29e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784765892-g7ff29e/amp-darwin-arm64"
      sha256 "bc53d041f51602a2d3d43b01d0fd233324ff83336aadef45f8caad7fcf44a278"
    else
      url "https://static.ampcode.com/cli/0.0.1784765892-g7ff29e/amp-darwin-x64"
      sha256 "8b83d47d55a9e64e3094bdc662c34a231ff64fb57418b3982a109ea506baaf57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784765892-g7ff29e/amp-linux-arm64"
      sha256 "c01feb7e1b73b1e1a9d672f0b5cfc61372e453ed451e075124235717ce79651a"
    else
      url "https://static.ampcode.com/cli/0.0.1784765892-g7ff29e/amp-linux-x64"
      sha256 "6ad5c9701d640a2ff27c36f82bc543f481e60936e1ae898f808db112b1ef9aa1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
