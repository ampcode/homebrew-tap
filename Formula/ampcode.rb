class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778933687-g015257"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778933687-g015257/amp-darwin-arm64"
      sha256 "2bf3a676a00a0c443edfc9d0936542734fa172382aa7d27de122c5db361825e5"
    else
      url "https://static.ampcode.com/cli/0.0.1778933687-g015257/amp-darwin-x64"
      sha256 "e661584ce1d9a1bb7493a11e463f2573c6f948f8c16cad7718a8ff27d268847d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778933687-g015257/amp-linux-arm64"
      sha256 "6384e5aebd6c7666b24008ce5e63d91f2d33f2883ce2e15aa70bd29403f06641"
    else
      url "https://static.ampcode.com/cli/0.0.1778933687-g015257/amp-linux-x64"
      sha256 "aa7b6675b940d981efb30f8aff739e9b35721eb2e4d73113acc83ecf0dce197c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
