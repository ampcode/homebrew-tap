class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776038869-g0bc56e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776038869-g0bc56e/amp-darwin-arm64"
      sha256 "0a23ff09ab6ace05637381529f654387639fc5b1e32f9e7302ed05bbdfb2f00f"
    else
      url "https://static.ampcode.com/cli/0.0.1776038869-g0bc56e/amp-darwin-x64"
      sha256 "c0e965feeeee39788063d8c9cea96c475a77aa4db710ecec77375d4ae8a11015"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776038869-g0bc56e/amp-linux-arm64"
      sha256 "4dd00b1f40da4aa1ae001809eb6b68b2c9f9c98534867fa6c606b21d334c0c70"
    else
      url "https://static.ampcode.com/cli/0.0.1776038869-g0bc56e/amp-linux-x64"
      sha256 "9b8ec73375c49e3cc0bde67b33b2fde8a3d2aa729de8f16a613d7ef3238be280"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
