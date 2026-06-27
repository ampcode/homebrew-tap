class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782554039-gb34e14"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782554039-gb34e14/amp-darwin-arm64"
      sha256 "3f2c3fdd1ad70a7dca18b9a08c4f37a344a44aa768f9a924135a5b04db5a3558"
    else
      url "https://static.ampcode.com/cli/0.0.1782554039-gb34e14/amp-darwin-x64"
      sha256 "4cd55a4177005b05d0d6bf957f5819fbd6cb6f9593ece6768db1702e4f2925bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782554039-gb34e14/amp-linux-arm64"
      sha256 "492714614d74b91d11644ac3f68b56d6408152b855ca6b293ac4d3ae3e87c75b"
    else
      url "https://static.ampcode.com/cli/0.0.1782554039-gb34e14/amp-linux-x64"
      sha256 "a720d03ec3f04169221d448d055b28191acd8228fee2be66584fb8bafd2e0f88"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
