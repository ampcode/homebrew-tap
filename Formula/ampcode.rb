class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773203397-g13b2f7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773203397-g13b2f7/amp-darwin-arm64"
      sha256 "d087fc001990ae4f7cbdfcf7deaf3eadad33ef84cb3e44e4b2e5b0ab6cd673c1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773203397-g13b2f7/amp-darwin-x64"
      sha256 "478a0b54a40b7a591afcd2e2e92af8927bfec1c8991aa2031d52ab46d2514622"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773203397-g13b2f7/amp-linux-arm64"
      sha256 "4794d20f15010aa4c44e181218263f048aa9dc79c1d8e7ed02e6388219245cba"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773203397-g13b2f7/amp-linux-x64"
      sha256 "df669926def592f39bb2b2bd4388966476f0fb96b6f6abed6814f09613acb721"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
