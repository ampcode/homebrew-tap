class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778744221-g87536d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778744221-g87536d/amp-darwin-arm64"
      sha256 "7556150f55da3565a34fb0deeb945a32d2591794e227e515d166996936221003"
    else
      url "https://static.ampcode.com/cli/0.0.1778744221-g87536d/amp-darwin-x64"
      sha256 "05420c0a61d7d7c6ec9ce2c42d58bfdb35de7cdce9df834b5ee32d123fd1096c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778744221-g87536d/amp-linux-arm64"
      sha256 "5e062d968506c1c21acf5376cf5a918fc87cbca3dc5583536c4b745dfe055a8a"
    else
      url "https://static.ampcode.com/cli/0.0.1778744221-g87536d/amp-linux-x64"
      sha256 "f30f86fecd9a7b156e00f2e74127122c1724e07f5161dcf5e6c6bc5eff249c60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
