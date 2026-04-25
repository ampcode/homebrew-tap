class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777115030-g5cc044"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777115030-g5cc044/amp-darwin-arm64"
      sha256 "92e2a34191a4d1bd7bdc9b1eb6a690f27cc74325666e7ff729dda0d6ae643b22"
    else
      url "https://static.ampcode.com/cli/0.0.1777115030-g5cc044/amp-darwin-x64"
      sha256 "078cd012f9df1aad21805c7566eb4f878966c59eb01c7d62b383e6c37f3ca567"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777115030-g5cc044/amp-linux-arm64"
      sha256 "1242431b5c9791f4ae8c693a80e650d68194c9546f5892946551085a8c46c1ff"
    else
      url "https://static.ampcode.com/cli/0.0.1777115030-g5cc044/amp-linux-x64"
      sha256 "9b493cfbe8734d92baffee7e98028d2366255afc7e36a20ba43be92acc93b330"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
