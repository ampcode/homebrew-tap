class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781561248-g912937"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781561248-g912937/amp-darwin-arm64"
      sha256 "db5d96be7b91bae830cfbc60cfed64de8e62d8eb15caa54e4bde3796f75a9372"
    else
      url "https://static.ampcode.com/cli/0.0.1781561248-g912937/amp-darwin-x64"
      sha256 "256f674595b4c8536ca737a9a474da35667ffd59afadda2cd2c6a66a7faade14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781561248-g912937/amp-linux-arm64"
      sha256 "9fa8ed1013a65f4c87728b21ce29230d64617366caf69338196b18a41e7fe96a"
    else
      url "https://static.ampcode.com/cli/0.0.1781561248-g912937/amp-linux-x64"
      sha256 "b813f2579617d479a6951f6e1938cd47e4a7040620d47a102b1ca07373fcebce"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
