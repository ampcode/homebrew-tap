class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785933103-g9dcb81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785933103-g9dcb81/amp-darwin-arm64"
      sha256 "39b6537e6973a028bf6c4594bb9aef187c3bdf220e683ed9cd608fd35daefeec"
    else
      url "https://static.ampcode.com/cli/0.0.1785933103-g9dcb81/amp-darwin-x64"
      sha256 "06884aba58f7fc5ecf56bb3eed58cf3071331189f9503dc60846671ba577722b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785933103-g9dcb81/amp-linux-arm64"
      sha256 "0aa4746ddb7c543f6337bc0f634d7bef675ff72b18187f714de3e0ff393e4533"
    else
      url "https://static.ampcode.com/cli/0.0.1785933103-g9dcb81/amp-linux-x64"
      sha256 "0e05ff10bffb2f705645f697c45ea3ec00edaef4d33716e3ac4b8d350dccac32"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
