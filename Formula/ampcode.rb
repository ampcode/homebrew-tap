class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770029152-gb71b57"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770029152-gb71b57/amp-darwin-arm64"
      sha256 "283f7b66566f92f8e5858ad6211dbf6bbe43aaa47d38d74b8e657ff60ef8137a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770029152-gb71b57/amp-darwin-x64"
      sha256 "6bb569387cacc581aac6c18576650dd460687f18435d3d9f96f6a979e99cdf89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770029152-gb71b57/amp-linux-arm64"
      sha256 "27a6e4f5a8c3d395753c635529a1b5f279fbfc135bb0b50ab1c0d790d111df91"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770029152-gb71b57/amp-linux-x64"
      sha256 "05dafa97e57f491957a6a3bcd1d390a679b30d740f36813915f1c4d4e243cc9d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
