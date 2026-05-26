class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779814970-g50cd9f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779814970-g50cd9f/amp-darwin-arm64"
      sha256 "573cf0fbdd77cf6ef84794dfc1f23af46205a4b1a6c83e85b662448b76a99732"
    else
      url "https://static.ampcode.com/cli/0.0.1779814970-g50cd9f/amp-darwin-x64"
      sha256 "f31ffa5e61845810448db84b8cea256473719f62f40f9461cda34ca76b62d913"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779814970-g50cd9f/amp-linux-arm64"
      sha256 "b076d30f17c67e954e782f6e423cc878bb3097a3431d44a217b9ecf4ac5b2f43"
    else
      url "https://static.ampcode.com/cli/0.0.1779814970-g50cd9f/amp-linux-x64"
      sha256 "274b537c280ce1ffca6bd8e71e8dfe2ec5f574729ac3bed0499421d6e214446e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
