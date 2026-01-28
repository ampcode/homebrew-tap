class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769569368-gd06824"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769569368-gd06824/amp-darwin-arm64"
      sha256 "de5cdce992d9cec5336b971f19fde9d1dfc82a556abdbac2564b541d92ddcbc6"
    else
      url "/0.0.1769569368-gd06824/amp-darwin-x64"
      sha256 "36f327f9b30392af6920bb637ff2f11187b992a6d5224d113a3b78c5f49730f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769569368-gd06824/amp-linux-arm64"
      sha256 "95afafd4a39a9fb00a31370722f2e6ecfbc206b47e1a0a8385d5298b67c730e6"
    else
      url "/0.0.1769569368-gd06824/amp-linux-x64"
      sha256 "51bfe8603c333c4d1f359e66af425eeb094e4a993ac9899e2fd649ca16840dcd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
