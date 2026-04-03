class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775191387-gd1bef3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775191387-gd1bef3/amp-darwin-arm64"
      sha256 "2ecd61dc70d277429faf7c493c1d97bb0f9617a6de6310ccee99c6885d39d578"
    else
      url "https://static.ampcode.com/cli/0.0.1775191387-gd1bef3/amp-darwin-x64"
      sha256 "dfbbc0441440d2cc68d2e2b05e2f971ac39c2a200dbc0571a9428ac383254f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775191387-gd1bef3/amp-linux-arm64"
      sha256 "0103ab0bd8775f6354e7093aaeff3fde8b0d59c3f1a10134238dce2a966948e1"
    else
      url "https://static.ampcode.com/cli/0.0.1775191387-gd1bef3/amp-linux-x64"
      sha256 "f25992646499fc007094d1de0ee116653e3ad71f4abf20634b52b68621001884"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
