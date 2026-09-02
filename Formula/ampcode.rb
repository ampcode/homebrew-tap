class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788335453-g5df492"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788335453-g5df492/amp-darwin-arm64"
      sha256 "53428f047629582adf477ab6c698e3f6b2371200481cc6311c299f9320cbee1e"
    else
      url "https://static.ampcode.com/cli/0.0.1788335453-g5df492/amp-darwin-x64"
      sha256 "73e79875d0fa5d2aebd441e0c4424284258cd6ee5216b59002355c00b7c24e8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788335453-g5df492/amp-linux-arm64"
      sha256 "8428d9e54fbf0b2143de650a7bf789e270c40b11cbf032d5c3dd88b8a6f02b5e"
    else
      url "https://static.ampcode.com/cli/0.0.1788335453-g5df492/amp-linux-x64"
      sha256 "1f8b6d4884835a20b6db3b30de7bffc7efa7a1e10d385a06c920e1232df2096e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
