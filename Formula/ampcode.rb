class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770407043-g8647bf"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770407043-g8647bf/amp-darwin-arm64"
      sha256 "2d7e336aac3217cee4692676021a79967dece92eecd71a98d968e74723cf5746"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770407043-g8647bf/amp-darwin-x64"
      sha256 "97599270a52f39a221d03f265d957b5b37489685d38af925db431e6f35f639d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770407043-g8647bf/amp-linux-arm64"
      sha256 "697366890341a773379989b302c7e30a52a5a5bc0a949b6d167b67efd0358a43"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770407043-g8647bf/amp-linux-x64"
      sha256 "6e9047f97b501e1a67333543d4d6243a893da5f14bc9910b8c8a1f9d84c27511"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
