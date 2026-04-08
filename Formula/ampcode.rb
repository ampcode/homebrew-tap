class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775623629-gdf6265"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775623629-gdf6265/amp-darwin-arm64"
      sha256 "0d3fca3b385dc3d06681c97a37b470eeebf350b104057e85899add08863aecf4"
    else
      url "https://static.ampcode.com/cli/0.0.1775623629-gdf6265/amp-darwin-x64"
      sha256 "7f843245289f92ede2f43ae04cdf80f5e45ea165bc58989bf16f9cc7f174c47f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775623629-gdf6265/amp-linux-arm64"
      sha256 "ad066e1f178c6c09e28046d8a5335f4ab3577f7199dfb98161f417c5a1cec775"
    else
      url "https://static.ampcode.com/cli/0.0.1775623629-gdf6265/amp-linux-x64"
      sha256 "bb45fa4b048b7b9cb6cdfa9f9779322f3f9a9bcdad12d08fe76f6f1df13f95a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
