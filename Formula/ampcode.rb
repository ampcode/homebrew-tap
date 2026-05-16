class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778890539-ga2e684"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778890539-ga2e684/amp-darwin-arm64"
      sha256 "a338b694b124cd50ed7208b3b815f813fec80f4691d383b8d0f874dc48add108"
    else
      url "https://static.ampcode.com/cli/0.0.1778890539-ga2e684/amp-darwin-x64"
      sha256 "dbb4d64cc7adb9563f7bbb1f6135e39308c6853d5fd717499e23caa3aa375ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778890539-ga2e684/amp-linux-arm64"
      sha256 "4f42fcbfc9db8ac8cc1f3989cc904b89d5fc2debce812ab5a0ff7d8759c228d6"
    else
      url "https://static.ampcode.com/cli/0.0.1778890539-ga2e684/amp-linux-x64"
      sha256 "0d35111be35d7921952edcf12ebf0220fc22cc1ae86842295a5ed2cc7c8f24a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
