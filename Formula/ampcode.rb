class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779075710-g571f8d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779075710-g571f8d/amp-darwin-arm64"
      sha256 "eafdf017d14ab3258e5058f903f5738f5516ff00af9dbfd349b43748d0331caf"
    else
      url "https://static.ampcode.com/cli/0.0.1779075710-g571f8d/amp-darwin-x64"
      sha256 "03c0f1580f61751de0d5489d14d4674045c9fa39713ef3d4b9e5710dab1d08c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779075710-g571f8d/amp-linux-arm64"
      sha256 "8a92a6127ad14d9b252bbd3e4e285af44583d86efb61d5a29eb0107ad6d0ce90"
    else
      url "https://static.ampcode.com/cli/0.0.1779075710-g571f8d/amp-linux-x64"
      sha256 "e0e46129fda5e7e613d00533e57874dcc7570f585f7f11e8632785aa068b8098"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
