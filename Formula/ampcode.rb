class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778962366-g17b62b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778962366-g17b62b/amp-darwin-arm64"
      sha256 "ccbffec15d0ece16337e5cbf9b940917fa70bdf5b522f083979143d64a4edb39"
    else
      url "https://static.ampcode.com/cli/0.0.1778962366-g17b62b/amp-darwin-x64"
      sha256 "3e102b5464f845468e16cb6e711f473880fa0e6e678d5232a2ac93c2bfcff5cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778962366-g17b62b/amp-linux-arm64"
      sha256 "96d4d0f2f2de53f4affdff9f990fd152e3b641204d14512cf1880d30cc05c203"
    else
      url "https://static.ampcode.com/cli/0.0.1778962366-g17b62b/amp-linux-x64"
      sha256 "91d4f616f79ed62bd856d84e7e9d24302bfb2baad80235935f8268c74b7452cc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
