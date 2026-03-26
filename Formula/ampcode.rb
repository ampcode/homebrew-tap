class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774523921-g3aaaa4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774523921-g3aaaa4/amp-darwin-arm64"
      sha256 "7a82c9ed467f3a4a451c6397c4710f957aba76b9ba157350cd066d90652c4efc"
    else
      url "https://static.ampcode.com/cli/0.0.1774523921-g3aaaa4/amp-darwin-x64"
      sha256 "ad19d47b38b689d8ea082aa620a140c6615c449fae8683ff52d5f7f275d64c4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774523921-g3aaaa4/amp-linux-arm64"
      sha256 "95c26401bf782a495bf7c43158bb2f3702b781257c6e799793b6c095b6518663"
    else
      url "https://static.ampcode.com/cli/0.0.1774523921-g3aaaa4/amp-linux-x64"
      sha256 "c8e9327f89b7b1569a1a4586833d7789a78adbe8d30142b64e4b837f122fe751"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
