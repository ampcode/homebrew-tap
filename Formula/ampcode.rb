class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789099241-gef9fd5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789099241-gef9fd5/amp-darwin-arm64"
      sha256 "8cd29a314797a789929eb40bae8a6d302ad2989d4ae4dce5b13dffbb2b5f305e"
    else
      url "https://static.ampcode.com/cli/0.0.1789099241-gef9fd5/amp-darwin-x64"
      sha256 "73766280c989a4f8566a1bab3315eb5ea97b974b30c0fa6df64d1ef439967556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789099241-gef9fd5/amp-linux-arm64"
      sha256 "00244ace3d132ac65c9e60602f23eb18f2db7f21a206dcb995a88530c155b15d"
    else
      url "https://static.ampcode.com/cli/0.0.1789099241-gef9fd5/amp-linux-x64"
      sha256 "2f093e71d4e14a706dde2f0627fb9c45446e0faa051baf0156538bce19377e53"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
