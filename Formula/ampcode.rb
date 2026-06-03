class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780514037-gf873b7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780514037-gf873b7/amp-darwin-arm64"
      sha256 "aaf25bd417dc10616612e0c50eecbb23a6e4082970c43ac76a1224e960fda72f"
    else
      url "https://static.ampcode.com/cli/0.0.1780514037-gf873b7/amp-darwin-x64"
      sha256 "70321f18355a466c50d9a0a75f23198c63131376da0e42890c56b0eb1362c1d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780514037-gf873b7/amp-linux-arm64"
      sha256 "e2fc267fe82f568649adc5cf0503845decc912ce84fc1e0e7b599a715d0b837d"
    else
      url "https://static.ampcode.com/cli/0.0.1780514037-gf873b7/amp-linux-x64"
      sha256 "1cfd7907897a7fe425c528f21a4c5d9c4996ba4a12ec0966dd01cdada878155f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
