class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781836651-g5bbf05"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781836651-g5bbf05/amp-darwin-arm64"
      sha256 "07eccc28efb4fd65f87fa471a5264adb19c44659de494e4f18fcc82b673f0da6"
    else
      url "https://static.ampcode.com/cli/0.0.1781836651-g5bbf05/amp-darwin-x64"
      sha256 "f0456be7d0d1f6d21b45da6f8dbbee46bb51340ba5f6c1b04e5fa44d0c9b8b49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781836651-g5bbf05/amp-linux-arm64"
      sha256 "77a13a854a2cda3c2736ab896bc8ecd5bb1b66540fcc3593ddd281014da3a2a2"
    else
      url "https://static.ampcode.com/cli/0.0.1781836651-g5bbf05/amp-linux-x64"
      sha256 "bedb35a4b2203194c7e0f04ff42993764ddf88504b7b7ba548b6ce3f910f94aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
