class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793952045-g82bb22"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793952045-g82bb22/amp-darwin-arm64"
      sha256 "c0e775dca1ea84f2bc830019af400bab1a16f3ee5986405ff4c8351e1498f444"
    else
      url "https://static.ampcode.com/cli/0.0.1793952045-g82bb22/amp-darwin-x64"
      sha256 "67fdf47aa69db6f6da48f13b22d20c93aaa726d7f6b1d2d97ccf7972643a9893"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793952045-g82bb22/amp-linux-arm64"
      sha256 "b3b10070d057dd322a88b65dccfdcd53ed3da080e966e7f50f0fdc55c4840467"
    else
      url "https://static.ampcode.com/cli/0.0.1793952045-g82bb22/amp-linux-x64"
      sha256 "9b71637458e1b9219af44e659f11203c991bad9dce36670d41e645bc2c342a48"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
