class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778429726-g13ad60"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778429726-g13ad60/amp-darwin-arm64"
      sha256 "f76b4edffa4a40ae29afbd97fc1b092260dc448bfa252a1d33d7e32efb36031b"
    else
      url "https://static.ampcode.com/cli/0.0.1778429726-g13ad60/amp-darwin-x64"
      sha256 "f20191319635a5795e76ce846af5c73922fa93ecff515821fbf4e68a06df7b31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778429726-g13ad60/amp-linux-arm64"
      sha256 "0cdae997ff826000b7bcc6384bc0ec69988c0aae48ca07978c90f22abd956f71"
    else
      url "https://static.ampcode.com/cli/0.0.1778429726-g13ad60/amp-linux-x64"
      sha256 "e31e2a0f152ebf7edd3edf3666111d20481e6edf6cc3cbf30bef77f8fcf1f7cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
