class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794081633-g6e983f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794081633-g6e983f/amp-darwin-arm64"
      sha256 "a8ce84a9170105d1e0b37ab0587052c13ac724d035dadcba78b9c60298f3c019"
    else
      url "https://static.ampcode.com/cli/0.0.1794081633-g6e983f/amp-darwin-x64"
      sha256 "a09a1c99dec2fbf0c5ac2d6b5b12dd8dc14e2f0189272909c62ab006286cd21b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794081633-g6e983f/amp-linux-arm64"
      sha256 "035cbea6e2373a9598fcffe8faa92a9157d163f42726c3dd33430174d33839a9"
    else
      url "https://static.ampcode.com/cli/0.0.1794081633-g6e983f/amp-linux-x64"
      sha256 "32a45688080c1e9c7da40fce67dd2ca6f2f4a354044006c7d38e2a64884b89ff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
