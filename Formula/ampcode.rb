class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776874784-g8b070f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776874784-g8b070f/amp-darwin-arm64"
      sha256 "38791b9f6058aea1edf0c579a6aa5a88b5e84938b476ed9bf63936099d887123"
    else
      url "https://static.ampcode.com/cli/0.0.1776874784-g8b070f/amp-darwin-x64"
      sha256 "920ecdb1c8d9f56747e00acebe82ca40a79b8ef7b584dd47d091de770b91dcf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776874784-g8b070f/amp-linux-arm64"
      sha256 "b1d2c20625d5582a425dd8fdfc2e0d5d603939d3c125fad25755c935b0aa6f81"
    else
      url "https://static.ampcode.com/cli/0.0.1776874784-g8b070f/amp-linux-x64"
      sha256 "a4c177dfe8a5de358f489b74b2d6ed430dfbf07d2a6f74a2d7399971bf51a0d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
