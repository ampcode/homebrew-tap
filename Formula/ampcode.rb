class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792540877-gcc084c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792540877-gcc084c/amp-darwin-arm64"
      sha256 "1a6944dfa4d9cde861f4553513e07e6176a130964177fe0fb1a20870bf4fd10e"
    else
      url "https://static.ampcode.com/cli/0.0.1792540877-gcc084c/amp-darwin-x64"
      sha256 "fcb2d3cac267ccf15dd69d23371500d68bd6b176ea92a4787a0367c95587b167"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792540877-gcc084c/amp-linux-arm64"
      sha256 "67927524728593d742c852c168b863e524df0278a1ca6ced05b2c9e04c623af0"
    else
      url "https://static.ampcode.com/cli/0.0.1792540877-gcc084c/amp-linux-x64"
      sha256 "f4bccf655d7de977157f8c5da1c5d6ce40e0e730a80cfc45d35e65cafc892394"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
