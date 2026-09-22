class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790049643-g8f1385"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790049643-g8f1385/amp-darwin-arm64"
      sha256 "fd40a0ab50a6ea5a1acad4dab6aee083215e58ad4c9ee85f5215a2143796fe74"
    else
      url "https://static.ampcode.com/cli/0.0.1790049643-g8f1385/amp-darwin-x64"
      sha256 "5c3f9404095bbb7f3378f73c1bb932d33ffd515c4c7b22f059808dcadd1d95fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790049643-g8f1385/amp-linux-arm64"
      sha256 "a8a4aa420d7dcb322fca9a45aa795834a6c7f9269e650d69ef1534333d698780"
    else
      url "https://static.ampcode.com/cli/0.0.1790049643-g8f1385/amp-linux-x64"
      sha256 "5979f9f50bdf373268e1d20184747e0e8a30b9b0a4e17c0de5c90afebcc04a08"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
