class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777612348-gc5f0c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777612348-gc5f0c3/amp-darwin-arm64"
      sha256 "3536794936bc8add2da32013c0ba663538c3efdc0c8bc921aa8d30573cc30a68"
    else
      url "https://static.ampcode.com/cli/0.0.1777612348-gc5f0c3/amp-darwin-x64"
      sha256 "ea425983edbd31adb960acd22004a7e37ba2e71333850e282a2fc9d742e408b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777612348-gc5f0c3/amp-linux-arm64"
      sha256 "a468231ceeb3e7a5befa97302bd05962556ccc35d782dcd62cab52a65c28c881"
    else
      url "https://static.ampcode.com/cli/0.0.1777612348-gc5f0c3/amp-linux-x64"
      sha256 "ce3ddc46510735bc5eaab880f0cae2a45ea29766898a512e8c7224fcaa3573ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
