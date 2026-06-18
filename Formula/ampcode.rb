class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781774273-g42b83b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781774273-g42b83b/amp-darwin-arm64"
      sha256 "f11fc42420c1dff0baaf5e001042ebc358d58ceeea063a0e7fa2d0f9176b58f2"
    else
      url "https://static.ampcode.com/cli/0.0.1781774273-g42b83b/amp-darwin-x64"
      sha256 "d5bbdc8a28156bbda3abdcf439f7b73d88d699766575c0c959871b4bb9defc05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781774273-g42b83b/amp-linux-arm64"
      sha256 "1f7699beb481c6fd5f7b93661b15f2b632efbe66f337ae40cf28b97d61ff14c2"
    else
      url "https://static.ampcode.com/cli/0.0.1781774273-g42b83b/amp-linux-x64"
      sha256 "b5b13bb78691579ddc4b38d82f93b3b6cee19f270d239aa39d64f0185be8adb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
