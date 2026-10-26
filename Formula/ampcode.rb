class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793044831-ga1b1a0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793044831-ga1b1a0/amp-darwin-arm64"
      sha256 "df38023df5b8111089eb9e55f9dba631ac46a8fd365f052155c89d82ca0129a2"
    else
      url "https://static.ampcode.com/cli/0.0.1793044831-ga1b1a0/amp-darwin-x64"
      sha256 "779752bbc2e278ba6743e646319f0f05565846be6e28b27e282eb61dd356501f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793044831-ga1b1a0/amp-linux-arm64"
      sha256 "67a31bdb5b5f7d1a908cf1df765ae6b6fc3aada439e44ab34f7a0ea24121867b"
    else
      url "https://static.ampcode.com/cli/0.0.1793044831-ga1b1a0/amp-linux-x64"
      sha256 "dca82941da9027a121e1c467a0b38d46a4951d35d17694f45d0611ad01f09bbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
