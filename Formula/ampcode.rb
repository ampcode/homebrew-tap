class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793722126-g0307eb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793722126-g0307eb/amp-darwin-arm64"
      sha256 "507658106786ac65cd0894b144c58b34c643af5572820ef4131f86cf819b9e45"
    else
      url "https://static.ampcode.com/cli/0.0.1793722126-g0307eb/amp-darwin-x64"
      sha256 "dca3f8cdee8c93cd9e11db90203306452c08bcee8b173ce60985af63ccfa155b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793722126-g0307eb/amp-linux-arm64"
      sha256 "58d5f422d6a35474d67b4c84459d7aa20d2e7d71b93081d4255ab2c13697f225"
    else
      url "https://static.ampcode.com/cli/0.0.1793722126-g0307eb/amp-linux-x64"
      sha256 "41023cc7f598503c550882735318fb840497403f53700d43b858b2b9db2d9db7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
