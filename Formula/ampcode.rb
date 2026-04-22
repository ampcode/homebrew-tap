class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776888957-g43f7e7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776888957-g43f7e7/amp-darwin-arm64"
      sha256 "acc021c1018bf3ee383950aa7c0b9f84562ce6bebe85c72744f7a998e74dc5f4"
    else
      url "https://static.ampcode.com/cli/0.0.1776888957-g43f7e7/amp-darwin-x64"
      sha256 "333c5be35c01b8fcc0050f11ad56d3e9a6b21cb3351cd113591d1fc80c1ab70d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776888957-g43f7e7/amp-linux-arm64"
      sha256 "c60d4bf1a83427d8878372cb75f55f27d9ae479938168ba7f834ba7beb0e4f71"
    else
      url "https://static.ampcode.com/cli/0.0.1776888957-g43f7e7/amp-linux-x64"
      sha256 "7c51baaec2bdc85b05a2cf3576665aa8bdb75982c27fe93fb2c27894b1d606ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
