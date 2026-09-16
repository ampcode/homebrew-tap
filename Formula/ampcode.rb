class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789582098-g39fff0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789582098-g39fff0/amp-darwin-arm64"
      sha256 "3d22d670053e7fa9105c2a3dc529d5765fb4ba6bc5d8116e84c2ff128cc39dea"
    else
      url "https://static.ampcode.com/cli/0.0.1789582098-g39fff0/amp-darwin-x64"
      sha256 "eb668fc221ef43fbac58cb2992549ee725ff39a97de342c5dcc438b28198dd44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789582098-g39fff0/amp-linux-arm64"
      sha256 "10376c808fccb3a76152b5371b7d93a355c376bbbd60b6ee28a9ccac2dfc50b2"
    else
      url "https://static.ampcode.com/cli/0.0.1789582098-g39fff0/amp-linux-x64"
      sha256 "ae39439128153fe8fbf254ae36e443f6674da7159bda9bf77c842b672bdeb970"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
