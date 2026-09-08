class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788903327-g45e79f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788903327-g45e79f/amp-darwin-arm64"
      sha256 "d7c042351f8a4be0d82f7fec0430b7cba08557747f3d3f66d88997244f1a1c19"
    else
      url "https://static.ampcode.com/cli/0.0.1788903327-g45e79f/amp-darwin-x64"
      sha256 "304f7ccb7526ebf91141b9b2f94d38f34484d473632c2c236286ed38a94c5292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788903327-g45e79f/amp-linux-arm64"
      sha256 "34e31b97206a69d289beb2fd87a9249c193e0265be00250d517c007a00abef8a"
    else
      url "https://static.ampcode.com/cli/0.0.1788903327-g45e79f/amp-linux-x64"
      sha256 "b7d8bf70ba42d8b2d47443074e4cd825b0f774ab872784fcc3ed5f0bfd96861b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
