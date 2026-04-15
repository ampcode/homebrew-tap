class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776266011-gf64ce8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776266011-gf64ce8/amp-darwin-arm64"
      sha256 "7c62bde3089d92876d06d228906cb954bc2f66db522b7b852ef9eafdd050c07f"
    else
      url "https://static.ampcode.com/cli/0.0.1776266011-gf64ce8/amp-darwin-x64"
      sha256 "815792b3f4a72d85a4dc424ccaba2f6f650bfa33030bb565a2925aadfa181ece"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776266011-gf64ce8/amp-linux-arm64"
      sha256 "0d971da5b4ffde044dd29163dd8b86a4af69e50d09e0e5ac30e1835000a04763"
    else
      url "https://static.ampcode.com/cli/0.0.1776266011-gf64ce8/amp-linux-x64"
      sha256 "768a2ffd2909af42e3a591aa64ede8328b7020baa80b2c43ea9d8a709b49a1c5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
