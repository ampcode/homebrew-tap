class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780619537-gd3ac9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780619537-gd3ac9a/amp-darwin-arm64"
      sha256 "11a2c7c09baf6724f027b7b19633a594777016c524df79aaae566ac39c839c80"
    else
      url "https://static.ampcode.com/cli/0.0.1780619537-gd3ac9a/amp-darwin-x64"
      sha256 "82ae27add858db0232fc63d79e1df320c2b651212d7b0a97eb869890bc6b8f41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780619537-gd3ac9a/amp-linux-arm64"
      sha256 "f3e627ffe9690335a2a8b318ed1265657d199fc4771b0de1c6339d742dfffd27"
    else
      url "https://static.ampcode.com/cli/0.0.1780619537-gd3ac9a/amp-linux-x64"
      sha256 "bb22d19cab77375b0f28a100c494a4d5ce9cc22b5fbc0615bbd285ff211163e4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
