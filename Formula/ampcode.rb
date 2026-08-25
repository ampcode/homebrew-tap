class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787637166-g487574"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787637166-g487574/amp-darwin-arm64"
      sha256 "7f9bcc9fa02ae640286be6f3cf1f56d8c6ed3f4cb9931a9cc20cb1c7bcbe22a3"
    else
      url "https://static.ampcode.com/cli/0.0.1787637166-g487574/amp-darwin-x64"
      sha256 "f8b1e40917d074fe6ea9bfa2820cfdf2938702a27250ab73a541114bef6f6469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787637166-g487574/amp-linux-arm64"
      sha256 "02c79125ef64e1cd2551d51e1c9f80e1b8a7521fa238706d5b8bf3c552dcb06b"
    else
      url "https://static.ampcode.com/cli/0.0.1787637166-g487574/amp-linux-x64"
      sha256 "ff1811e7e0b671d2a7f819ae1dc509cbaea97e2ef0229dd2a99f9b68a1edd065"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
