class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775723142-gcc3f2f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775723142-gcc3f2f/amp-darwin-arm64"
      sha256 "a0709d2627e0c1c0872dbcf811ebed4eb674e2a769d57ca77c26cf5a631079ed"
    else
      url "https://static.ampcode.com/cli/0.0.1775723142-gcc3f2f/amp-darwin-x64"
      sha256 "9ebf6a170743ab6f9c5ad27e8d43a8127b4689efe83be9b87f02f303be8a4a8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775723142-gcc3f2f/amp-linux-arm64"
      sha256 "68bb6eaab1c3d8da89a9054e4101b7db28266e3b71abdf7ae34cf5a268d84d58"
    else
      url "https://static.ampcode.com/cli/0.0.1775723142-gcc3f2f/amp-linux-x64"
      sha256 "5fa0d7f475c79ce5382438ef10ce5845e2a05d3f0eedf37b68a81378efb6de5a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
