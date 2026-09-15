class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789488048-gf818ec"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789488048-gf818ec/amp-darwin-arm64"
      sha256 "73ad5073cb402f39e2a117dc7d4b27da7bcf288dae6b854fe76f2fa7e39e31c1"
    else
      url "https://static.ampcode.com/cli/0.0.1789488048-gf818ec/amp-darwin-x64"
      sha256 "6eacd76cf48b43092a2c9ec344fad4bff93d871c2348f3fb000246a3586b83e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789488048-gf818ec/amp-linux-arm64"
      sha256 "c24bac974018314ee5f97da56399ab18670b730f77f75e75b03f9618bb566d4d"
    else
      url "https://static.ampcode.com/cli/0.0.1789488048-gf818ec/amp-linux-x64"
      sha256 "2db2c590bcc973f6f944cf07f57c1b1c5febf0718724ca1f415d94084ff69a02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
