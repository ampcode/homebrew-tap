class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769616374-g07eb35"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769616374-g07eb35/amp-darwin-arm64"
      sha256 "f0db3e4ee532357c08059f293e5048ece8adf37da0524782db4bdf343dd8f4b5"
    else
      url "/0.0.1769616374-g07eb35/amp-darwin-x64"
      sha256 "58d0ca16aede0ce5d71b4b22c2a36d30d4b989baa41641313f163a5b1945383a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769616374-g07eb35/amp-linux-arm64"
      sha256 "9cf05d767856fe0c6ae941d00b361a562b2ef9adde21fe01d450eaae72706d9b"
    else
      url "/0.0.1769616374-g07eb35/amp-linux-x64"
      sha256 "f4c7f87fcf61c1453d2ae1564eb16cc7b7306f6295fa58c8e096ceb9201ce7d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
