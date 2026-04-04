class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775318725-g13b193"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775318725-g13b193/amp-darwin-arm64"
      sha256 "b7aeeca3f40be2047d94012f516c2122dab43bc7fa6077cf26bd004ce3849d02"
    else
      url "https://static.ampcode.com/cli/0.0.1775318725-g13b193/amp-darwin-x64"
      sha256 "736943c9498bee297ac0916de7737dabf3d1c0ff307305a01ff3c9badc00d3be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775318725-g13b193/amp-linux-arm64"
      sha256 "215ee90196c4391505800c9bfd81c7dfa92dae15b0fd8471253dfb4bfc3e1e44"
    else
      url "https://static.ampcode.com/cli/0.0.1775318725-g13b193/amp-linux-x64"
      sha256 "ff1b8d6c7e2e423ea25acd1e0b60a62be880490b50e5ed025a4310792818c924"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
