class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780600651-gc6bc0c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780600651-gc6bc0c/amp-darwin-arm64"
      sha256 "db8ed3ea1eddc35e30db4fefc72344948c5df642f0156453bfeebf151636cfc1"
    else
      url "https://static.ampcode.com/cli/0.0.1780600651-gc6bc0c/amp-darwin-x64"
      sha256 "3ad95d7fcdcf1e8fd7ae067f06a3b8910e2b523b2975a530b937a09008aac6e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780600651-gc6bc0c/amp-linux-arm64"
      sha256 "97858071f28a5f8f208e802224ef08acb4d171dbd36831673e77b8aed58a5da2"
    else
      url "https://static.ampcode.com/cli/0.0.1780600651-gc6bc0c/amp-linux-x64"
      sha256 "3ab7daec91f340149244b132270fa6856a8f04b5350d820725337a0610cea9d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
