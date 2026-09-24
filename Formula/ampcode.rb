class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790262890-gb85cba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790262890-gb85cba/amp-darwin-arm64"
      sha256 "357d8fd1df993177c3dc981323421ec2288091da6231df4caafb15b6cdfd7477"
    else
      url "https://static.ampcode.com/cli/0.0.1790262890-gb85cba/amp-darwin-x64"
      sha256 "5076a4b6ff9d4890fa4f666a23a2a827e2ba7bc3180cc5d48c66580550d48a16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790262890-gb85cba/amp-linux-arm64"
      sha256 "bbb5214ce756012e4a5d99cd732d591a88fadb4d52873b795bf14f0a257b6300"
    else
      url "https://static.ampcode.com/cli/0.0.1790262890-gb85cba/amp-linux-x64"
      sha256 "10e92604010c533a3817ef9cf458da8f57939e7cdaec8a24d8714a336f1dd1c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
