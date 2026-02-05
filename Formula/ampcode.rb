class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770298200-g2358fe"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770298200-g2358fe/amp-darwin-arm64"
      sha256 "c0abab299a4c56ae8bee663871662ec26612f23c247c25b144286d532bb50598"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770298200-g2358fe/amp-darwin-x64"
      sha256 "9f00d5e9f2c63bb758fd0bb00227936cb27a5eba37c94133b32d7e91550324d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770298200-g2358fe/amp-linux-arm64"
      sha256 "07ee4f9d28f61f753e3e691a8b5c826c3cc1d2e0daab0d8368387517000e36d5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770298200-g2358fe/amp-linux-x64"
      sha256 "e580381d76a7a7af390711006d6b0d8632540084d76dd95e575b9e29dbab44bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
