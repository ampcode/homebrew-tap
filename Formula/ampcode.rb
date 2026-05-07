class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778133312-gbddb39"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778133312-gbddb39/amp-darwin-arm64"
      sha256 "16a3aff1b191369965d89cd06b1bf438be25d49ff4d4a000a7bb10ca8ad9de20"
    else
      url "https://static.ampcode.com/cli/0.0.1778133312-gbddb39/amp-darwin-x64"
      sha256 "98e66d27907d4d7601c4732b17acc1800348dc4307d9cf3a5475eccc5c3bed89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778133312-gbddb39/amp-linux-arm64"
      sha256 "d7eb09ff360927f221ac80273db30feca7b449ce3d884ab1002d24866d1a30f3"
    else
      url "https://static.ampcode.com/cli/0.0.1778133312-gbddb39/amp-linux-x64"
      sha256 "94c30a9c5f58f4c295bae7ad5596e66fc2784bd5acafa55410354cd95467f538"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
