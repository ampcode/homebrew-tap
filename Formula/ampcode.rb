class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776917347-g98800a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776917347-g98800a/amp-darwin-arm64"
      sha256 "05f936b3961e0aa7a956fca2a658b3deea1f221d9d0aba2691ac0b246a703dad"
    else
      url "https://static.ampcode.com/cli/0.0.1776917347-g98800a/amp-darwin-x64"
      sha256 "64e83f68ec3c6aed3d066c59dab931d0eb400d4c4a1467cfb5b1f0d511d5fda4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776917347-g98800a/amp-linux-arm64"
      sha256 "d61e308623d186f432094e128591eea91c5cd673567526d56239a02eba8e0c0a"
    else
      url "https://static.ampcode.com/cli/0.0.1776917347-g98800a/amp-linux-x64"
      sha256 "47f020361a6dbbdbc136ecb146d6ea3c204bdc2e1eeea1d9c81be37273f9f869"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
