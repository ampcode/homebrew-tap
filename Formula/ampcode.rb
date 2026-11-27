class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795752045-g36b26b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795752045-g36b26b/amp-darwin-arm64"
      sha256 "daa9ee73ea68763555ac48f50e9a3ff1f777f2baa7ded5599f9e9deefe59b1d4"
    else
      url "https://static.ampcode.com/cli/0.0.1795752045-g36b26b/amp-darwin-x64"
      sha256 "8320911a81f882c90e2f2adce7db4b81d70c85bc5cb15be1a466e3eff0d312a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795752045-g36b26b/amp-linux-arm64"
      sha256 "6a6e64c3125f17d952a59a9bddc8016789908d46396fe697cb689816daced845"
    else
      url "https://static.ampcode.com/cli/0.0.1795752045-g36b26b/amp-linux-x64"
      sha256 "4fb3bfb5a16efff99bb467e95051cd0955d18436674a756823a217a26ec44021"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
