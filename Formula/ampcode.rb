class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789603265-ge0868f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789603265-ge0868f/amp-darwin-arm64"
      sha256 "0b906ea48599a7d1f0d966d1e752d148bb856e25facc9b5f66def537c276b73b"
    else
      url "https://static.ampcode.com/cli/0.0.1789603265-ge0868f/amp-darwin-x64"
      sha256 "c4e55c3a1657b6298ced0832776df122b17d6314576415c0a85176472fc06d05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789603265-ge0868f/amp-linux-arm64"
      sha256 "96b93637a96d5c0bd5391457eb5f023797dd23dc4a5bf96f29dc78a70e929c5c"
    else
      url "https://static.ampcode.com/cli/0.0.1789603265-ge0868f/amp-linux-x64"
      sha256 "3c455586425dde069580ba632a7d11eb72ae18f27c14db847d7645f116e4c033"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
