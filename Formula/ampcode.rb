class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781615097-g8b565d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781615097-g8b565d/amp-darwin-arm64"
      sha256 "899df105bb5938abb72dbf0c593b1c9b36ee5f8a9f2f1bc884460d138f87773c"
    else
      url "https://static.ampcode.com/cli/0.0.1781615097-g8b565d/amp-darwin-x64"
      sha256 "1fda00e9e982bf1d6e2ca07b0b6035999002e8e963c039b05c5c866aec168c24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781615097-g8b565d/amp-linux-arm64"
      sha256 "4d8c24f152546c3ee3dd94e6322ad2ced8a87c047ea4076fd75fdc506e2fb17b"
    else
      url "https://static.ampcode.com/cli/0.0.1781615097-g8b565d/amp-linux-x64"
      sha256 "c4740d89e03589fba7404deaf520c6ed96b8e0f84e3c72aa395e5254418089d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
