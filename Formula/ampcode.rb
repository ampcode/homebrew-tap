class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780001021-g55238e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780001021-g55238e/amp-darwin-arm64"
      sha256 "cfc711393142bf83cfc68385054fd92f0564cac85b670bd7e70f66d9289e9f98"
    else
      url "https://static.ampcode.com/cli/0.0.1780001021-g55238e/amp-darwin-x64"
      sha256 "8ab7e83778c0f15c685c4cd81491b747feb2a05ff91e9f6d97a0416747a2bf6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780001021-g55238e/amp-linux-arm64"
      sha256 "4c0176a2d72a9ca6596e8bcef1ba690bc8222a4c52a465a95f713ce9a9de477f"
    else
      url "https://static.ampcode.com/cli/0.0.1780001021-g55238e/amp-linux-x64"
      sha256 "5bbd65150de0946ef40b4df0d786753f539465dfd696cbe46f0509dbff1f3a65"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
