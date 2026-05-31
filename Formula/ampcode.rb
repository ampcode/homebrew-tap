class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780217867-g22770a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780217867-g22770a/amp-darwin-arm64"
      sha256 "95608b3381f7b55c41ecb6cc02ce67d96bd4d9137958288005601a66a5127a26"
    else
      url "https://static.ampcode.com/cli/0.0.1780217867-g22770a/amp-darwin-x64"
      sha256 "d10d7857a07cfb8d7e0472dbdad75913d830d8ee983f660aa38568ce92a23235"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780217867-g22770a/amp-linux-arm64"
      sha256 "27198d052f2a3021a11bf2118a4f011051fd8eb1618a8b5f6bd51419e629fea6"
    else
      url "https://static.ampcode.com/cli/0.0.1780217867-g22770a/amp-linux-x64"
      sha256 "b68bab5faf72416e12874b129f454696131702feab8394212f0fc90aa4ba3e88"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
