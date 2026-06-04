class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780617045-g2e1ca1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780617045-g2e1ca1/amp-darwin-arm64"
      sha256 "e998438c37a1c619029af9b9dbc28b79d0ff6a265d84cb1e71f9645f6e058e40"
    else
      url "https://static.ampcode.com/cli/0.0.1780617045-g2e1ca1/amp-darwin-x64"
      sha256 "c17d786ddc9670eb50758b9b68c532df6a0bb2da7dc37182521abfab6162ba51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780617045-g2e1ca1/amp-linux-arm64"
      sha256 "0a154b6cfa5c34fb873f0feec25c1ba3469f1c8366e7ef8edb0dd9237ca42f7b"
    else
      url "https://static.ampcode.com/cli/0.0.1780617045-g2e1ca1/amp-linux-x64"
      sha256 "a7629bd062670fbd3a7c9081ff09d97fcc3e44d39ab3d80ea4506bdbab5ac8d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
