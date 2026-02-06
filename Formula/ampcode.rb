class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770373863-g6875aa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770373863-g6875aa/amp-darwin-arm64"
      sha256 "cf6388d7ad7a142cb3d3b89f833a4a751a0293cac0d60b2ad67965b7fbfd0e58"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770373863-g6875aa/amp-darwin-x64"
      sha256 "a47a27ac5994724b1eefb61baa43bb0af03aaf61e751f9077cdcc05ab44c5595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770373863-g6875aa/amp-linux-arm64"
      sha256 "b460efd2182981ad6dd76709fc8cf8efd4e13d1d4cac7127ac0c78c553c14920"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770373863-g6875aa/amp-linux-x64"
      sha256 "d4bab3504d4ab0e5a888836422d86e6ce14cd89ba617d4c16a03460b010a390e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
