class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785184098-gdd0f3f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785184098-gdd0f3f/amp-darwin-arm64"
      sha256 "f0adf9deaf9f3d54a40f67bc34a72cb3009718630907a4afcf92fb84725ad515"
    else
      url "https://static.ampcode.com/cli/0.0.1785184098-gdd0f3f/amp-darwin-x64"
      sha256 "a5f4bc646174da49f5476cd8440782c3e4ad5fcd28d2627b14eb148d82833da8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785184098-gdd0f3f/amp-linux-arm64"
      sha256 "49e2833bac06aa8f3c2de9fe5eac8ea221c970c76f9e157def8377bc88ba7ca7"
    else
      url "https://static.ampcode.com/cli/0.0.1785184098-gdd0f3f/amp-linux-x64"
      sha256 "efed465009bdf5c168fdc5347b0c16ece42d75714d031a359ea4889f985e2341"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
