class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795075234-g7a71f0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795075234-g7a71f0/amp-darwin-arm64"
      sha256 "f3360f01f4e8cbbf5cfe0a5653c5e89af544c8eea4143fdbcbae34f62f198a56"
    else
      url "https://static.ampcode.com/cli/0.0.1795075234-g7a71f0/amp-darwin-x64"
      sha256 "4ec049ae951622893834db434eaba9809a6b369e0cc1dc2320e82e0b12d8426f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795075234-g7a71f0/amp-linux-arm64"
      sha256 "136b3590fbafdbf70c10ce695eb0ed87719d97a5d75dab7edd7d4bc52479da27"
    else
      url "https://static.ampcode.com/cli/0.0.1795075234-g7a71f0/amp-linux-x64"
      sha256 "a0c87fcd4d11bffc1e694021eab436ead258ca530731c69dea39a672dd95a8a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
