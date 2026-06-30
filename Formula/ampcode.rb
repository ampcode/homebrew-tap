class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782804642-gdd842c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782804642-gdd842c/amp-darwin-arm64"
      sha256 "18661b7f36e4799e40155c85bc7aed74b6df68cd6a1334cadf94271bd20ef34e"
    else
      url "https://static.ampcode.com/cli/0.0.1782804642-gdd842c/amp-darwin-x64"
      sha256 "80fa0537ee3049579af0007345cb8e4a474262a0631ea4704a220d673c388784"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782804642-gdd842c/amp-linux-arm64"
      sha256 "3bb5a21a1dc47765ddbad1c4977b4b4c83e3ce0bd554d5d5158ab37693440d4c"
    else
      url "https://static.ampcode.com/cli/0.0.1782804642-gdd842c/amp-linux-x64"
      sha256 "deb9b28f372d9b0758a116f561bcff67f8bdcab81e06f0f50558fe686f969039"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
