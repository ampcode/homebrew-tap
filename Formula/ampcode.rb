class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776319575-g26c751"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776319575-g26c751/amp-darwin-arm64"
      sha256 "2cee73d46a7cfd72437d27f1b59743a0f9f137a9f626cce63a9bdfc36a6f1c16"
    else
      url "https://static.ampcode.com/cli/0.0.1776319575-g26c751/amp-darwin-x64"
      sha256 "25a7fa16372a2bd7e414a30b4de7d2f2da6a30f6517ce3c95f37cfbc0155f581"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776319575-g26c751/amp-linux-arm64"
      sha256 "cc713f1802afd20de28aca46e7f1cf166f82f2ee0dcd89c0a28a5914f6a4cded"
    else
      url "https://static.ampcode.com/cli/0.0.1776319575-g26c751/amp-linux-x64"
      sha256 "9f2258a359e2bb07bf5c5aa16d4f6c5681d5604f68d999a8749bd72ee3d3faf2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
