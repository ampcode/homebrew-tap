class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776341680-g8bc40b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776341680-g8bc40b/amp-darwin-arm64"
      sha256 "97d4fd15f94770cea1f8453428eb4d7559dfd6732b7ea17c3925dbaec887cfd4"
    else
      url "https://static.ampcode.com/cli/0.0.1776341680-g8bc40b/amp-darwin-x64"
      sha256 "3caeb6d89bb3046962f294d1337a10dc058398373a6c8b0dfa6daf062e104179"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776341680-g8bc40b/amp-linux-arm64"
      sha256 "110a124692cd1e26efb9a83d70b8d89e42c6926fb2c337dd9d57997ea2e85637"
    else
      url "https://static.ampcode.com/cli/0.0.1776341680-g8bc40b/amp-linux-x64"
      sha256 "4b7ac77c2db396425776b9cf77000df24092c03673bf64e4321bbc2afe9b2762"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
