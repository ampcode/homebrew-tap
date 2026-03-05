class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772697965-g732433"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772697965-g732433/amp-darwin-arm64"
      sha256 "4b66138b451836b161a0c53eb30876e7ccfbbb7933e39e4ef8c37b2aae603d19"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772697965-g732433/amp-darwin-x64"
      sha256 "66901be5ba40f82a173ae3dc6c53515e62f6f211f030742283fa46c99fbd593e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772697965-g732433/amp-linux-arm64"
      sha256 "34881719acb95ee6990656409b9df77a5bdc6168f674a71a93b22d6ec9ed8541"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772697965-g732433/amp-linux-x64"
      sha256 "8f9a3887696ef283d5a6dbcaddaabe6e33729dcd1d09cdd14ecb2f3d66111153"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
