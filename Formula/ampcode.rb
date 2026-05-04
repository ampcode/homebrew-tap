class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777875280-g2566d7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777875280-g2566d7/amp-darwin-arm64"
      sha256 "f77d0c7db325aa8d55a597588be511b49f22e2d9a0d45b9a83a8d26a606c0081"
    else
      url "https://static.ampcode.com/cli/0.0.1777875280-g2566d7/amp-darwin-x64"
      sha256 "53609a849e55e845f3a4877430431f9c5908169a2487f570dee2c9fb7b22085d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777875280-g2566d7/amp-linux-arm64"
      sha256 "ba7bc97704964369b70d6db9303a916b0ec960c5e15b64e314c563e268ef9f01"
    else
      url "https://static.ampcode.com/cli/0.0.1777875280-g2566d7/amp-linux-x64"
      sha256 "f908325cf9987783738d49978bed8d80498340a9cbdc617936baa16e91afce1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
