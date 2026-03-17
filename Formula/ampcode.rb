class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773735023-g6a26c6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773735023-g6a26c6/amp-darwin-arm64"
      sha256 "8cffa3042f1e7653e433cf8ccf6673758505a13d9315651b6e21e33e3013da94"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773735023-g6a26c6/amp-darwin-x64"
      sha256 "4d69e2f2132a1c5ad3da5580eb01c3bcc62003d5dba0a2aba43dc3f598bc4422"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773735023-g6a26c6/amp-linux-arm64"
      sha256 "f6d53fe0be984e6c3de68a838e860db070f6483c8d2493df90431afa3aac8409"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773735023-g6a26c6/amp-linux-x64"
      sha256 "465dfda2ec3c338f1dfc5ead8741542bd384e58f13c4d2851885315545311bc2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
