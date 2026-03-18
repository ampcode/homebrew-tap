class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773864462-g01dd34"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773864462-g01dd34/amp-darwin-arm64"
      sha256 "d8af44eea349241cdeae0d2152c3459ab07dd00a8254c3c499f69977cb353b63"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773864462-g01dd34/amp-darwin-x64"
      sha256 "0d015c99c64c890c4cf28dcf95cb7a512af2d7e5af74680d4def9d3d8c0e60ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773864462-g01dd34/amp-linux-arm64"
      sha256 "503a0c15e44ce099ee5d0cd85ec55ea39764e85e86a6c01d381b88f10a7bd1cd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773864462-g01dd34/amp-linux-x64"
      sha256 "198ee2505ac1657579bba9905ce6c6e51f4a960b851dad0fb656c868aa143c9b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
