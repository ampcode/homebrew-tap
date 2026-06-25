class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782395713-g9b74a6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782395713-g9b74a6/amp-darwin-arm64"
      sha256 "c05a446a07279656267d922427e0b45d0cd2f0ee06ea0b919fba6228ce8f06f4"
    else
      url "https://static.ampcode.com/cli/0.0.1782395713-g9b74a6/amp-darwin-x64"
      sha256 "dcb6008b0df072000700ca2da8d3ba3b1156743d562134633f0e69ce5fe1a472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782395713-g9b74a6/amp-linux-arm64"
      sha256 "616324607700a8bcf3eacabb9bebc3eed8f28e66bae9c3d1617021acfd0e9798"
    else
      url "https://static.ampcode.com/cli/0.0.1782395713-g9b74a6/amp-linux-x64"
      sha256 "99d4169837d914fbc9df3baf21faaaf3ef2cbf8d6d2e0a0d60e1eb98ce6a4f5f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
