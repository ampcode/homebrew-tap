class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780618934-gd11e6b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780618934-gd11e6b/amp-darwin-arm64"
      sha256 "33826e2fcd02212a002a44b24d8f953a00c078612bf21b803ba3c42784f32f9d"
    else
      url "https://static.ampcode.com/cli/0.0.1780618934-gd11e6b/amp-darwin-x64"
      sha256 "38878d70e4b0c8a4b3fc302ac8bc71f080576a4b8d994d5f476d911592d613fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780618934-gd11e6b/amp-linux-arm64"
      sha256 "d7500c8ef045746365b683441e332bb2f4da54b3581628f8f4b0c8ac8df39159"
    else
      url "https://static.ampcode.com/cli/0.0.1780618934-gd11e6b/amp-linux-x64"
      sha256 "e39cd237305715ce84e5bbc96920045fa805350e21ff235cc183f2362f6818e5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
