class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770937240-ge00c31"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770937240-ge00c31/amp-darwin-arm64"
      sha256 "1cc5448c70625501da0023fb3aeddc191714fa16cf4ab1ea036b9797e37a5985"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770937240-ge00c31/amp-darwin-x64"
      sha256 "67c2e8bc4471da3b1457e02d3ecf8c94cfc5f7a2c199ae22aad2591a29f7d0ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770937240-ge00c31/amp-linux-arm64"
      sha256 "0dc886e3d711e1613ccf4738e87eec89f0cc484e692277d669bee36af68e241c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770937240-ge00c31/amp-linux-x64"
      sha256 "1705f71f679eeae4e5e7557e6938aa28b66ff33a2f301988e8fb2ed2a42b02f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
