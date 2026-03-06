class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772771401-gbc0d9c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772771401-gbc0d9c/amp-darwin-arm64"
      sha256 "e4b7b787cfd73e0cf315e401b7d07422278db210a89ea88007c04266ea23f39d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772771401-gbc0d9c/amp-darwin-x64"
      sha256 "044f75a6612cbe11a570c27465b3d9ed819a7dbf17eae8efea1d2e98221632a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772771401-gbc0d9c/amp-linux-arm64"
      sha256 "5a91860b8b51b94f87373912b2580a9c168caccedaad8a8bd1a417a45fa760e1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772771401-gbc0d9c/amp-linux-x64"
      sha256 "137bc26877e43c11db0ebf9abc04fbf6aba8005db0993dc4ce22af302692bba0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
