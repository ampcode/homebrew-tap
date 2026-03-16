class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773649032-gf6d352"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773649032-gf6d352/amp-darwin-arm64"
      sha256 "c483f63126a61acdb4210093991e907b54628177ce1d9ea2c37b0b0fb47faeb7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773649032-gf6d352/amp-darwin-x64"
      sha256 "d3a8a8976b32ac1fb0c1d0697981e9714caeae5538fe400e0f984866b1d1d858"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773649032-gf6d352/amp-linux-arm64"
      sha256 "fec5c14633ae07b1ab4d5ba2e8a3c643b3059c50b244b05fcf8abcf99ff6d952"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773649032-gf6d352/amp-linux-x64"
      sha256 "540fa34ee7b00337fbd44e31f5f786b39d8233d87253f46a82287ffdf79cac13"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
