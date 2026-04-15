class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776224639-g846b69"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776224639-g846b69/amp-darwin-arm64"
      sha256 "50c94def91376b3bdc7e6e19b1610105b924001d6550a877ad706c9f341ae6ea"
    else
      url "https://static.ampcode.com/cli/0.0.1776224639-g846b69/amp-darwin-x64"
      sha256 "9b6fa5b8294239c680f0eb1bb06ca2ee3495c299048f5c4ec4279269e4405200"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776224639-g846b69/amp-linux-arm64"
      sha256 "a548142ed965b317055fd8bc8203623e971769a50670d33cc35763b7d604636f"
    else
      url "https://static.ampcode.com/cli/0.0.1776224639-g846b69/amp-linux-x64"
      sha256 "6eb03cbd7b34756a363f7498ec84e4257ed4d38c352f24874ba97b564ee17742"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
