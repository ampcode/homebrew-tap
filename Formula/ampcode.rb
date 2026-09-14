class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789397462-g32b092"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789397462-g32b092/amp-darwin-arm64"
      sha256 "4391935381f6d34a70b294dda73c42fc664d02aecfa40b34cb1dbf35674c0be9"
    else
      url "https://static.ampcode.com/cli/0.0.1789397462-g32b092/amp-darwin-x64"
      sha256 "38678475cc3977985087a64aba9bc5ea35473df69697481db9c84c9b7c050a20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789397462-g32b092/amp-linux-arm64"
      sha256 "15a41b1cccefea0bff82a04be37bfa9d3eac813170070c7bd8ce7e63ca7f975e"
    else
      url "https://static.ampcode.com/cli/0.0.1789397462-g32b092/amp-linux-x64"
      sha256 "a61bdb6a832e617cc46e81095d5badfd0736dfe549e90aa9093cf8cab68e00ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
