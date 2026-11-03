class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793664053-ga6248e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793664053-ga6248e/amp-darwin-arm64"
      sha256 "b670faba459375211ca45c8a7fb5975fdde9482a575cd1a5de128724517063dd"
    else
      url "https://static.ampcode.com/cli/0.0.1793664053-ga6248e/amp-darwin-x64"
      sha256 "e3ed3a2626c55d8d0d8fd886f18d4cfb860cab887b5fdc39307caa14557f5916"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793664053-ga6248e/amp-linux-arm64"
      sha256 "f795e056e9cbc32bc97ea9acacf61d7a4f7585e7cbb14ae0a613181bf9ca5fee"
    else
      url "https://static.ampcode.com/cli/0.0.1793664053-ga6248e/amp-linux-x64"
      sha256 "f46eafd5e31dc99c90d88c15e25af34c8840b265e228e98a486fe4c616fbb6e5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
