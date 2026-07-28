class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785256223-g1a034b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785256223-g1a034b/amp-darwin-arm64"
      sha256 "aa1bfc6cdd2c42c5b0537c1a2bb614231631064662569899f61137e456444b05"
    else
      url "https://static.ampcode.com/cli/0.0.1785256223-g1a034b/amp-darwin-x64"
      sha256 "f37c2983d24f86424779e05f48605d7a59105e9ef49ea51a25fe50bb77952e01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785256223-g1a034b/amp-linux-arm64"
      sha256 "067b690cba507f51318311466fea9105bf0d919be2197640e85a7df6c8f8547c"
    else
      url "https://static.ampcode.com/cli/0.0.1785256223-g1a034b/amp-linux-x64"
      sha256 "53b38a5501fabe7a3449b2a5c3bb68cc1cb9545ae628c062dd2904c3d0b73b6d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
