class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794441653-gbe68d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794441653-gbe68d4/amp-darwin-arm64"
      sha256 "91a07721f4639743dd751a2390c0cfb8690a297700226d170a94f497f089595e"
    else
      url "https://static.ampcode.com/cli/0.0.1794441653-gbe68d4/amp-darwin-x64"
      sha256 "a37de99f81eca3a6f655db0d4170c53c14d14d95df8b45b8e34c07a603c6415e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794441653-gbe68d4/amp-linux-arm64"
      sha256 "d0f7458cac430916f8733d4866111d86ec5e772f4162093abe6034de8ffd12e9"
    else
      url "https://static.ampcode.com/cli/0.0.1794441653-gbe68d4/amp-linux-x64"
      sha256 "54997a3965dee8dbf3164939950d6dc2860a33c1cccdec45eebeb1f50573d2e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
