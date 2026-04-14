class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776168816-gd868d5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776168816-gd868d5/amp-darwin-arm64"
      sha256 "e43f4ed08db47276ab19a0b2459899da9ddf9b754645d12b33663e5f2bfe4000"
    else
      url "https://static.ampcode.com/cli/0.0.1776168816-gd868d5/amp-darwin-x64"
      sha256 "7f7ad01e9da2e19de6cb6efbd0a97c423612ea57fbed494e5e2d14f708b5d523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776168816-gd868d5/amp-linux-arm64"
      sha256 "5ff6f01484af4d45f97359c2232c7dc95b5b52113329863d74067ca3907439c8"
    else
      url "https://static.ampcode.com/cli/0.0.1776168816-gd868d5/amp-linux-x64"
      sha256 "a2a70d2a56b5facb9eb2a745fc7b94177048bddc2226a53c3f6ff099a23fbd1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
