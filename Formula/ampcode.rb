class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792743733-g57207c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792743733-g57207c/amp-darwin-arm64"
      sha256 "d590962faa10706f9a2e3a0d8ea68a83b4b118ebd5cd2eea79f6ae852c2c2acd"
    else
      url "https://static.ampcode.com/cli/0.0.1792743733-g57207c/amp-darwin-x64"
      sha256 "3bb990cec216578f9ccf9fa7eff1cee1a0518a44a6a3bd99ea18189477a46c55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792743733-g57207c/amp-linux-arm64"
      sha256 "d3a6460e3f2485c6b36d4f045ea2db427159c949c23acb23fc760ac89e27d406"
    else
      url "https://static.ampcode.com/cli/0.0.1792743733-g57207c/amp-linux-x64"
      sha256 "0f4faf3fc546117f9ba4c6f5dbeaddf2cbd1862bbf1139f312b7373c40b9a15f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
