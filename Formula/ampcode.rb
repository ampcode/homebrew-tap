class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783329373-gb3eec2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783329373-gb3eec2/amp-darwin-arm64"
      sha256 "8b702f6c15d4d21606c4459e087f9276ef7d713522a34698b21febf472c67410"
    else
      url "https://static.ampcode.com/cli/0.0.1783329373-gb3eec2/amp-darwin-x64"
      sha256 "263d6143f42214693a408bc5016aad09bd79b86ba6e808a5d3347bc5e7b5e49b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783329373-gb3eec2/amp-linux-arm64"
      sha256 "e95209012e7acd97f914518128b24a09fae7ae8ce68f62cd4a2e94dc77431907"
    else
      url "https://static.ampcode.com/cli/0.0.1783329373-gb3eec2/amp-linux-x64"
      sha256 "edf1a0388115decae67b4c0a42cbd89413e5f3ce7561170da2c347e7264d54a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
