class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780493054-g3ba24f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780493054-g3ba24f/amp-darwin-arm64"
      sha256 "073f5bd17ff6a464c82647e5d7c2d3c984c0e5cb911c8d781e001b6515bf7dbb"
    else
      url "https://static.ampcode.com/cli/0.0.1780493054-g3ba24f/amp-darwin-x64"
      sha256 "1e83a497fa69260a0f5197c0660718d7cfc856721be737537684db940142f60e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780493054-g3ba24f/amp-linux-arm64"
      sha256 "561bcf7d82d30bb60ee60b715c6b245086e7f0aab17b5f5f72f33de230d6ab67"
    else
      url "https://static.ampcode.com/cli/0.0.1780493054-g3ba24f/amp-linux-x64"
      sha256 "eecd2d45c66fe42c084916441fc1ffd66f33d689df923fb94b35b5d62e6f1d82"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
