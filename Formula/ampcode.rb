class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778761759-gbc66d9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778761759-gbc66d9/amp-darwin-arm64"
      sha256 "589629b1a3f6db000c125decb46c8066cf7c5dbea6ec4ba9146f865588692436"
    else
      url "https://static.ampcode.com/cli/0.0.1778761759-gbc66d9/amp-darwin-x64"
      sha256 "208a03ce06b3baedb347cbc1b89ab7d0dedbae05846f97b4b2c947a994ee4a61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778761759-gbc66d9/amp-linux-arm64"
      sha256 "03a24e8046ee160d2c8190106d00a16fe1d36a8683cbf87953ff1d99653a1954"
    else
      url "https://static.ampcode.com/cli/0.0.1778761759-gbc66d9/amp-linux-x64"
      sha256 "3e4c2db3c080705d59b32ddab6196fb0030b5242568d393c17ac85c2ae0cb24c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
