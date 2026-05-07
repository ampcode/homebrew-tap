class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778137759-g2b4034"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778137759-g2b4034/amp-darwin-arm64"
      sha256 "c2e6c17fb4366e822f434855092b3396fba68e17f67b9b21498fe418576cd594"
    else
      url "https://static.ampcode.com/cli/0.0.1778137759-g2b4034/amp-darwin-x64"
      sha256 "56d24e5996d5e1c7d8a83e467ebb198342dbb51b75a5738d47b2a4513c812596"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778137759-g2b4034/amp-linux-arm64"
      sha256 "ed646bd33f657704c3b8c794d93b38a679aeb4d715ace59f39d49765dda74d73"
    else
      url "https://static.ampcode.com/cli/0.0.1778137759-g2b4034/amp-linux-x64"
      sha256 "9560acb57d26e71882ea9d0d49ecb72a0edf9c8930a0e1371b6150c2fe8109bb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
