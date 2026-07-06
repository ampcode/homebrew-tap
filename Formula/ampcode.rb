class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783297199-g2d4d81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783297199-g2d4d81/amp-darwin-arm64"
      sha256 "b9656b946b881f18466f8ff46e30883142c3d22d616e2453ca5371dc742c6458"
    else
      url "https://static.ampcode.com/cli/0.0.1783297199-g2d4d81/amp-darwin-x64"
      sha256 "43338c19c963ec519b52496bcda2ee297fc4b8e9d60ea57f6b2f83b55223d5a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783297199-g2d4d81/amp-linux-arm64"
      sha256 "c1724209a75c7683480356e50f53332910a76beff9c225ac7b58fc20aed2ad9a"
    else
      url "https://static.ampcode.com/cli/0.0.1783297199-g2d4d81/amp-linux-x64"
      sha256 "d162d3c6f262b33792bb3ab1f11288243fe25b733f22e190683511ad3ee487e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
