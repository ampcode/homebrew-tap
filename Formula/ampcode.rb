class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780774659-gd08a06"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780774659-gd08a06/amp-darwin-arm64"
      sha256 "fe08778be770b23b4ef8efb4ef1309414837b9b71aa02b479f21c9bf33588746"
    else
      url "https://static.ampcode.com/cli/0.0.1780774659-gd08a06/amp-darwin-x64"
      sha256 "91fa687239f69fd53364214d963a23101be24529276875de83dcf6d805b5911d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780774659-gd08a06/amp-linux-arm64"
      sha256 "21b116e8a1c9aba9d53ea36445e5f3ee81a4f7446726df937bbc08e720f6a521"
    else
      url "https://static.ampcode.com/cli/0.0.1780774659-gd08a06/amp-linux-x64"
      sha256 "7c0b9071a6611930dc577e3cc9b41193ab8e01fd2550f074542510b8f5e1a900"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
