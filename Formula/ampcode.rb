class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773858012-g006c32"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858012-g006c32/amp-darwin-arm64"
      sha256 "cf06db1738c33f848d073a4025a2214b34dca9f849709b247a85bdf44abbff9f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858012-g006c32/amp-darwin-x64"
      sha256 "c51527b7711c13758a9bdb224c008577c77c6b9033d86a968a50b09012ef71c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858012-g006c32/amp-linux-arm64"
      sha256 "4bd1f2e4bb4c5cc1b4a6f249a4aac3821d955af4f9a7d6cc3b69a0f58f538233"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858012-g006c32/amp-linux-x64"
      sha256 "a24cb07456c0d820ded114e74307e68cc805f0f1aa6b89b34c1f1eb0ff7751cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
