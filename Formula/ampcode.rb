class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791576029-g70ed39"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791576029-g70ed39/amp-darwin-arm64"
      sha256 "a3a48ca02d3023ede7782501b399cd88a446e9b8bad53311974a2020ec4017d5"
    else
      url "https://static.ampcode.com/cli/0.0.1791576029-g70ed39/amp-darwin-x64"
      sha256 "8c8ed2475e67b8d46d5ee9e938fa51f4e843655d691e450cac83c18717276c57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791576029-g70ed39/amp-linux-arm64"
      sha256 "30fed3082fbb87a5610e35e3d908cc8a95059d4e11b754ba79845c755a7c246b"
    else
      url "https://static.ampcode.com/cli/0.0.1791576029-g70ed39/amp-linux-x64"
      sha256 "0dddc0f255958538ce741fcaaf02d691f7c3a019714bdf78b1b861ce015c5cf1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
