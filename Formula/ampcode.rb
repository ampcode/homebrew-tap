class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778876600-gb6c4d8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778876600-gb6c4d8/amp-darwin-arm64"
      sha256 "85ae4cf41702b6cf4bc529eba98a284e7bdbe64460fbd5f96340a4e2d748f1d6"
    else
      url "https://static.ampcode.com/cli/0.0.1778876600-gb6c4d8/amp-darwin-x64"
      sha256 "4819f48733a05ce63f730728c093ba1800d5a8908fb25d9dfa3881095088a3a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778876600-gb6c4d8/amp-linux-arm64"
      sha256 "9e9a4011776bd079c455d6d1c01af3eba5cb394f8e4590f2f2c8b6203d3e9529"
    else
      url "https://static.ampcode.com/cli/0.0.1778876600-gb6c4d8/amp-linux-x64"
      sha256 "fbe0e559a6a7a8db2732c0acf495872934f2a5430d11651f779bd2fb39166348"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
