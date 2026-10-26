class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792987309-gb46681"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792987309-gb46681/amp-darwin-arm64"
      sha256 "52a631f7c32aac88cf894e7fe625f352ad9f76e952ed5d19f9d91a3832d9f464"
    else
      url "https://static.ampcode.com/cli/0.0.1792987309-gb46681/amp-darwin-x64"
      sha256 "42efcfdae857ef57835a3f96a6ac61e8e5817ac61af87680375238ed5923cc60"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792987309-gb46681/amp-linux-arm64"
      sha256 "8180597063bb24f48fb7837ee7dd910c090e66880956e9cb0b45f5f1a404ba84"
    else
      url "https://static.ampcode.com/cli/0.0.1792987309-gb46681/amp-linux-x64"
      sha256 "0fe6afc1a95181e2408bd5d9c2e6ea302c52b227f5346550dd4ab3b89ee8c5b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
