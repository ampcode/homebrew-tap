class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771734754-g9b2f90"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771734754-g9b2f90/amp-darwin-arm64"
      sha256 "eb18bf786244e975fbae0b5df9b2c61ab9c295eb212619507c8a3968bcbe46f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771734754-g9b2f90/amp-darwin-x64"
      sha256 "1ef862f85b10a8dd811330b7ebe1e22766aa9639c9e44bd02b8aa0c177a12a75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771734754-g9b2f90/amp-linux-arm64"
      sha256 "235dbd7ad46cd020f56c4fb31d0be657c14e8313a877dd4e554b42b1a83d2261"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771734754-g9b2f90/amp-linux-x64"
      sha256 "89dcbe8578c6a14bc0ce016466cc5a0fda59cf9c8104973490778e4fd5ab6b3d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
