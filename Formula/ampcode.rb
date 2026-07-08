class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783524817-g514148"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783524817-g514148/amp-darwin-arm64"
      sha256 "14e9fcf2eb28ab92419d9a210cee72bd9a82015c1162a661cf178b63dc093823"
    else
      url "https://static.ampcode.com/cli/0.0.1783524817-g514148/amp-darwin-x64"
      sha256 "1fa7feb9f5d4967bdf623ca2f566684e1d356166132d6885e990ae291817e6ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783524817-g514148/amp-linux-arm64"
      sha256 "a85be20d9618320b132f03bc798af62a323353d37435722215a7996ac28c0b9d"
    else
      url "https://static.ampcode.com/cli/0.0.1783524817-g514148/amp-linux-x64"
      sha256 "0686eafb2b03f750fa214dc56448872406928e264546e67e2dbe706668d808f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
