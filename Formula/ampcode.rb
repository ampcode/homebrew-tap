class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777933148-g0690e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777933148-g0690e2/amp-darwin-arm64"
      sha256 "82bcf6b5800b06f3f072fa64f11f16b755aa4f41fee0bb96a6f9e4cae79ec439"
    else
      url "https://static.ampcode.com/cli/0.0.1777933148-g0690e2/amp-darwin-x64"
      sha256 "eecb68a6fbe0628981cdedc3ecb0bef2f8c6128b7af86b79f16309ea26b4d7d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777933148-g0690e2/amp-linux-arm64"
      sha256 "dca6a51bb1816daa2fcef41ef76b8b3c9ce993b428df11be0ee37627979a3ffd"
    else
      url "https://static.ampcode.com/cli/0.0.1777933148-g0690e2/amp-linux-x64"
      sha256 "cc697fce983b53fdb120bb24fc41f6a11091a105bcf45d6ff0d9e557c3e78131"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
