class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777184261-g87783e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777184261-g87783e/amp-darwin-arm64"
      sha256 "f9bef0af8169e7e943cd443a75fea825ef11e0d35df8f4328b0bcc2878ec095f"
    else
      url "https://static.ampcode.com/cli/0.0.1777184261-g87783e/amp-darwin-x64"
      sha256 "a9d1cb168a0f9d9bd2e13d7d32200677ad00384c33cd7736348967837cd3b8e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777184261-g87783e/amp-linux-arm64"
      sha256 "f12412af434c8cf0eceb3be354f99c08f0147715c96e2ed4117365d58184e558"
    else
      url "https://static.ampcode.com/cli/0.0.1777184261-g87783e/amp-linux-x64"
      sha256 "8eaa1800e6f75f75857e25dc1456aac54353aa280bf826018c11c6e06e71f929"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
