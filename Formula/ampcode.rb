class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795377632-g0e89ea"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795377632-g0e89ea/amp-darwin-arm64"
      sha256 "03eaaf70bbd6e525e55a63dd75707969b9a78eef2e4b7a9871a0964bbd77725b"
    else
      url "https://static.ampcode.com/cli/0.0.1795377632-g0e89ea/amp-darwin-x64"
      sha256 "4b743ee67e89aa2ba2d72a38975898877483adc9720671df1fdea7ab4d115106"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795377632-g0e89ea/amp-linux-arm64"
      sha256 "f06cd1eb295d486dde0f3620b0b41b81f2d7c3209ce80c055d8df199ecf07288"
    else
      url "https://static.ampcode.com/cli/0.0.1795377632-g0e89ea/amp-linux-x64"
      sha256 "d477150e8a92486d4b96625b35787f9abcaef5d67cb37bd3533b23aa6cde08c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
