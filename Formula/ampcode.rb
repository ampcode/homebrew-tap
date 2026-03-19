class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773893967-gdee123"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773893967-gdee123/amp-darwin-arm64"
      sha256 "424609c7976929962ee6f33b6b9eee87fbd090ee3f13f5022b1d487c085be414"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773893967-gdee123/amp-darwin-x64"
      sha256 "02b128694eed4dc6153d35e87ee059393de259e8b6cc0beab2945eb04398d00a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773893967-gdee123/amp-linux-arm64"
      sha256 "d80b19310630d7616c13e5ad3ed6a1816719c09e1446f2ac2b7cdd6233d1ca42"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773893967-gdee123/amp-linux-x64"
      sha256 "a0f35559823227cd4f849f697f7f345f8c20782ea6f5ec466aa62a83b21d2a42"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
