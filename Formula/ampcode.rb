class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781088312-gec99cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781088312-gec99cb/amp-darwin-arm64"
      sha256 "46a07a1ba5edfe7156bdeddb6b76ef3291de62fa0fb1388ae83061a2f064baa4"
    else
      url "https://static.ampcode.com/cli/0.0.1781088312-gec99cb/amp-darwin-x64"
      sha256 "e23da4604d35a66c9dff2c9b83af2d2e11adaf061f3453a886b833937375ca09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781088312-gec99cb/amp-linux-arm64"
      sha256 "f692e15bef39ddca2758da76c1276dd20b0bb4a612e75c7306ef494bf7c4e3c8"
    else
      url "https://static.ampcode.com/cli/0.0.1781088312-gec99cb/amp-linux-x64"
      sha256 "4786cd65b2e534907d085f6fa9124a1dd732946d0d0b35dad43db9bbcff37580"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
