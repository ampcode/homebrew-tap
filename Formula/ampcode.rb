class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777810224-g45de5b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777810224-g45de5b/amp-darwin-arm64"
      sha256 "724bf8a8d7f21171bc2170ab662c08eb538fc32678329209e6215e9bba5f1220"
    else
      url "https://static.ampcode.com/cli/0.0.1777810224-g45de5b/amp-darwin-x64"
      sha256 "9dc1e4bea10f8f3324488fca336c51f4d00cf2624a2e8348ebf4e6ec47a69b39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777810224-g45de5b/amp-linux-arm64"
      sha256 "e5615030ac1c260ae5b94ec27c02fab5b5596e50bc1a4517c654f32aefd6ee39"
    else
      url "https://static.ampcode.com/cli/0.0.1777810224-g45de5b/amp-linux-x64"
      sha256 "4dd6351ca7cb01dbcd7ff5528a363d4aa8df7f977c3053cf23d9b2858195e4db"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
