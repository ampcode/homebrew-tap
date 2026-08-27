class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787840218-gfad2ef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787840218-gfad2ef/amp-darwin-arm64"
      sha256 "8aea9b4d9df72afb4e08ea1ce0620e24d4304be413f11f73d0bd43eb76bcccaa"
    else
      url "https://static.ampcode.com/cli/0.0.1787840218-gfad2ef/amp-darwin-x64"
      sha256 "b4cb7ce49bd4a518ed8ea3fabda1e5f514f26f9f91f044add0300588a7d32a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787840218-gfad2ef/amp-linux-arm64"
      sha256 "dcdcfcdc2ef3f13e3048ab33773a79ae8e2f6e5bd1cb6e5dd437c846a8ae00bb"
    else
      url "https://static.ampcode.com/cli/0.0.1787840218-gfad2ef/amp-linux-x64"
      sha256 "fed167944a157873a689aff7bc1b2b73933a5c6cad98973794452c9142f1d9ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
