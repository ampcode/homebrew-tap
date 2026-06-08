class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780884556-g9cd342"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780884556-g9cd342/amp-darwin-arm64"
      sha256 "9358bd2c4f88095e2966955a44f7da413a9844193bbb2d166c8b4d7edc017e32"
    else
      url "https://static.ampcode.com/cli/0.0.1780884556-g9cd342/amp-darwin-x64"
      sha256 "5e3fc314cf9a71a15ce04ac54a1eee4caa0b83f3b75d908f9bc87a05baa9fb88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780884556-g9cd342/amp-linux-arm64"
      sha256 "692590143c47359c18b5e449591f69918d6197c2e78b92a3d1cd029b3b0295e1"
    else
      url "https://static.ampcode.com/cli/0.0.1780884556-g9cd342/amp-linux-x64"
      sha256 "44e348e34b6b7e554bb80d37f040d19b95267faf33e56f1a3f6196102e823f0d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
