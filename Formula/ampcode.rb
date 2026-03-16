class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773636573-gfb5a42"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773636573-gfb5a42/amp-darwin-arm64"
      sha256 "8409af3ef60329fc98681a97ea6e9ec7ca853dc64deb4b99dfc50155340cf3f7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773636573-gfb5a42/amp-darwin-x64"
      sha256 "7bbdc4f1c762ddf8bb5e7fcb60b4443ba837df5c2f50e7d391d7f7152da10f4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773636573-gfb5a42/amp-linux-arm64"
      sha256 "22f34f2b31bcf3957517886c6fbb93576a5fe7d3eb31f691acc6d301aac0fa37"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773636573-gfb5a42/amp-linux-x64"
      sha256 "da256a880ff39d7de36985a4cb80619db5ee36779a0583d3e210374ee3bb98ca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
