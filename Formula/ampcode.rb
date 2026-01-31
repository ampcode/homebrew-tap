class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769889688-g296e2e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769889688-g296e2e/amp-darwin-arm64"
      sha256 "bb4320862258ed3327d164d64a5c6ed30f30239f2eab37f077f2b88ac525347e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769889688-g296e2e/amp-darwin-x64"
      sha256 "b0e33a9baf34bc0eef93fef73414257aca46b50b2a4c155922beee75b9d15172"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769889688-g296e2e/amp-linux-arm64"
      sha256 "5f4abcb87538bafb17ff9417a1b498701e4418ea64c53bd75db337762d33623c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769889688-g296e2e/amp-linux-x64"
      sha256 "e56a5836675a904cfb2b117709b207f1a4d018c3f241a2d474cc6f868007c979"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
