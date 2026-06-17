class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781669741-g230fdd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781669741-g230fdd/amp-darwin-arm64"
      sha256 "abfe3d956149e59d2436a65a64c8aeff09ce6f7f52a9b27067a5ccac9a7da974"
    else
      url "https://static.ampcode.com/cli/0.0.1781669741-g230fdd/amp-darwin-x64"
      sha256 "fd8ef9ac1e9bb03dea4f5ddc90ea5d6bfd7cd82c15545a71ad7463442ebc937a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781669741-g230fdd/amp-linux-arm64"
      sha256 "0e08ce40233f5bc776e990d18e5773d7f3b869d5d53537c19d4991077e9065d2"
    else
      url "https://static.ampcode.com/cli/0.0.1781669741-g230fdd/amp-linux-x64"
      sha256 "73f5df5223e48f40b972597f186f1eb851e3558a41c3f730779ce904fec7e3fc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
