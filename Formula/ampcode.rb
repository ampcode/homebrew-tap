class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773055281-ga3787a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773055281-ga3787a/amp-darwin-arm64"
      sha256 "0ae47337178bc89690c678ed3795245052f5d3e9aaac0fa1490c19a237d3ef27"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773055281-ga3787a/amp-darwin-x64"
      sha256 "a923f285110a9dd65bc20ff91d6536943f8f9e1f4529b27903654d4e4a7c9116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773055281-ga3787a/amp-linux-arm64"
      sha256 "15028e5d87fbd75bf7e502358762ab4e0ad281fb7a35e78cd5af7da2f337cb8c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773055281-ga3787a/amp-linux-x64"
      sha256 "c4d2d69aaf7faa5017041309a2bc641f4a7f46bfeef1313315916f35178fdf8e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
