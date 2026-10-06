class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791244891-g160ca9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791244891-g160ca9/amp-darwin-arm64"
      sha256 "2ce8909642f1fb3f0b7f9197706e104a7d4998d13df57bb35f12e74b308d9cfd"
    else
      url "https://static.ampcode.com/cli/0.0.1791244891-g160ca9/amp-darwin-x64"
      sha256 "1b6901f0884fa6644260ae8176c336678e0c065325d74e25049e60af0e45f1e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791244891-g160ca9/amp-linux-arm64"
      sha256 "9bfa4e3d26a277ffdd5b0fe01d11fc58a5855d3791ce282f762dfc469b6aa97a"
    else
      url "https://static.ampcode.com/cli/0.0.1791244891-g160ca9/amp-linux-x64"
      sha256 "e3b40c80d9e92f97a0fc6c87f855962eb13fb8e25aa8b5c7c1f66540f1bf310a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
