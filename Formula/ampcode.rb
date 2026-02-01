class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769947298-g8e4154"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769947298-g8e4154/amp-darwin-arm64"
      sha256 "a42cfce378772cb3673ae07d1c78da83b168fc287ca27e410f17e65edf5528ae"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769947298-g8e4154/amp-darwin-x64"
      sha256 "67be3aa281bd9afdc9fef749771764df29a702e51c1189934ed8b34e2ffe9045"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769947298-g8e4154/amp-linux-arm64"
      sha256 "26c32b89750b92b33a53323000b0f13242b6466547698d273642099dde31dc04"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769947298-g8e4154/amp-linux-x64"
      sha256 "e9d7cf2587c3d31d18a6cad8ba69d87a91aa5165c824e3c1c6c13074de727756"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
