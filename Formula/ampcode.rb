class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775364429-ga6c742"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775364429-ga6c742/amp-darwin-arm64"
      sha256 "be92354e353d63d9f810c24f5060f14f5e31ec221594f5e8be62d537ecf1b97d"
    else
      url "https://static.ampcode.com/cli/0.0.1775364429-ga6c742/amp-darwin-x64"
      sha256 "cc07bf5f1e003be50328f5cb4401687bff829be97404279e235bd8c484b4a03e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775364429-ga6c742/amp-linux-arm64"
      sha256 "d383130e6b58063e57c3dac69c73c59950b6653e0b0367f1a27d05ad9c244919"
    else
      url "https://static.ampcode.com/cli/0.0.1775364429-ga6c742/amp-linux-x64"
      sha256 "322ae97b78df8cc7888c67a9321b9dbf745627a33155ae4936683b422014257c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
