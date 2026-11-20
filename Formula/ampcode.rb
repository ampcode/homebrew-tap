class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795176040-g0dd132"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795176040-g0dd132/amp-darwin-arm64"
      sha256 "9985b78778c7bc6bc31fdddea9e217043e33c45e7d614c78c3d6b04b1428caba"
    else
      url "https://static.ampcode.com/cli/0.0.1795176040-g0dd132/amp-darwin-x64"
      sha256 "c6f17a345e55c42ac84bf06e40fe29e6ba2327ab3b9da3b5051dd64b3c10cc80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795176040-g0dd132/amp-linux-arm64"
      sha256 "f3152f1bd1d011db21aa6c543cf4b0448c2779b24db9a28dc76e98432be34f1c"
    else
      url "https://static.ampcode.com/cli/0.0.1795176040-g0dd132/amp-linux-x64"
      sha256 "48753d8d95f6a4e48da306c93ca31e729697e62a10240728675a51e83cb1603d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
