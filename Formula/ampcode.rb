class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778503881-g2f7b20"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778503881-g2f7b20/amp-darwin-arm64"
      sha256 "de80831a11f55b37b95dd4b8adbfae6d8b6e43a3aa439befd31671fb27aedb54"
    else
      url "https://static.ampcode.com/cli/0.0.1778503881-g2f7b20/amp-darwin-x64"
      sha256 "83b87d5db21790ebb59a12e9547543bda327127ac7b0ac9bbfb801b204563a08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778503881-g2f7b20/amp-linux-arm64"
      sha256 "8bcfcd8828f07c069687ccaec6ed9a326c82fe6577bbeed64227ff1d0ef05925"
    else
      url "https://static.ampcode.com/cli/0.0.1778503881-g2f7b20/amp-linux-x64"
      sha256 "dba7088187dd619ae9aaf1efcaea00825cd24dafbdbb89bdabfda58a72a499f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
