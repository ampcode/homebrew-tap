class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769453600-g4995da"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769453600-g4995da/amp-darwin-arm64"
      sha256 "d3744fa2cf9f0f243967feb606d11bfab31a1518436fc7443069bbec47a5ad6b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769453600-g4995da/amp-darwin-x64"
      sha256 "86945e4c9218fa1009a1aa1d0cd27c1bf5fa0fe3a0e9185d3958488af5632268"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769453600-g4995da/amp-linux-arm64"
      sha256 "717ef924dfcceba0d45a0fadac438d4987c21eccdb5b4b9a4b8db07e19d8b2ce"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769453600-g4995da/amp-linux-x64"
      sha256 "c7666c74cd9adc278829d1d339e98de969df0646e31fb4f20ee383f1904b9878"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
