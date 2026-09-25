class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790308846-g932e8e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790308846-g932e8e/amp-darwin-arm64"
      sha256 "97fdc2eb04d74f6a2f2ed647ce336239fa224462c70e90de4c8a9c8d374d44fd"
    else
      url "https://static.ampcode.com/cli/0.0.1790308846-g932e8e/amp-darwin-x64"
      sha256 "09bde34e33b45937952ae33b8a40be3f5082afca45b17d392308e3c439def572"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790308846-g932e8e/amp-linux-arm64"
      sha256 "c8c14e06aace2ed5e7cc5ac351a7c2a14286a62e665642bb55c9b86cf87bd90c"
    else
      url "https://static.ampcode.com/cli/0.0.1790308846-g932e8e/amp-linux-x64"
      sha256 "9c969eea7f5bea424c0e789faabcb4509e4fdf3106f33d72fe1a5a1d5eac4149"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
