class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792152053-g57ff9b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792152053-g57ff9b/amp-darwin-arm64"
      sha256 "d82bb14ac5d234ad416c6f46400b75e794cb5492d11301c433531c82f6fa5a30"
    else
      url "https://static.ampcode.com/cli/0.0.1792152053-g57ff9b/amp-darwin-x64"
      sha256 "78d08e687fa662f94d8c716d23c6bf8a25991b54cb53900b2566a16c34b47b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792152053-g57ff9b/amp-linux-arm64"
      sha256 "42182618f2759622778d63ee76760e27d9146e92987c45ecca79b9cb8972c4ef"
    else
      url "https://static.ampcode.com/cli/0.0.1792152053-g57ff9b/amp-linux-x64"
      sha256 "7a0f51ea4115491ed4ec899715f192a693cd5f5c2a75c3be13663edbcc0200bc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
