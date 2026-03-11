class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773228670-g491bb3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228670-g491bb3/amp-darwin-arm64"
      sha256 "7d84464c089404b613d07544e9a9df9152cd866fd95a9ad45b2bdf65c306b229"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228670-g491bb3/amp-darwin-x64"
      sha256 "f5ab6500f3fdf2ad6de02c37e85d662977ae32757d04c49b1fea3ef711008f0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228670-g491bb3/amp-linux-arm64"
      sha256 "320b75fe2f864ba443dfe76d61b5e2298ded74830a27bec4456855b868c52b2f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773228670-g491bb3/amp-linux-x64"
      sha256 "75292ae48132164c97e6dbc3a9de8615aee6541c4bcd837ece2379228acb2d8a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
