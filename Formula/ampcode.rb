class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772222620-g1de875"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772222620-g1de875/amp-darwin-arm64"
      sha256 "dff84e213486999a242c007e18e9bb81ff8197c7216e6741deefff06aff42fab"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772222620-g1de875/amp-darwin-x64"
      sha256 "42158472c7f472a0fa40a0f888645baa9d1f813a83950226d0e34f901a653601"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772222620-g1de875/amp-linux-arm64"
      sha256 "716a5fa9e02785816cae4df87fe38b6b75775e79c692c7405ddd9c97190e3362"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772222620-g1de875/amp-linux-x64"
      sha256 "c814c362910a71520a14b70af67bc0f874e01df1c6f628c400f329084ce734c6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
