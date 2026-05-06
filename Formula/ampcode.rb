class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778063032-g75e089"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778063032-g75e089/amp-darwin-arm64"
      sha256 "3909f2fca1691f8401ca3c8e4d84fb5756bdb5b7f0c1251fe99eb71113bb2c10"
    else
      url "https://static.ampcode.com/cli/0.0.1778063032-g75e089/amp-darwin-x64"
      sha256 "09ff4a442f8b41a6986c3e1dea8f79ec60517d48781a778245a5485e4a960b2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778063032-g75e089/amp-linux-arm64"
      sha256 "3003e515b8944d8d6d688bdd8c231785dc132bf90ddfb9d5cee93a9b4f5dd0dd"
    else
      url "https://static.ampcode.com/cli/0.0.1778063032-g75e089/amp-linux-x64"
      sha256 "9f40af9ccb4f03d6ad3cf805e5f46fc005e5e9471c9804050b9627a10726370d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
