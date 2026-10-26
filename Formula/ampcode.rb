class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792995770-gba80ba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792995770-gba80ba/amp-darwin-arm64"
      sha256 "96e1f7233ae1c8ce2755f4edfabe9e340c3cb9b1206ac7d4dd288ced01512a7b"
    else
      url "https://static.ampcode.com/cli/0.0.1792995770-gba80ba/amp-darwin-x64"
      sha256 "ea8ab7bcc77bd853b07db18352a5d0cf1cfecde9e4700587b2b738e97c0e7c5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792995770-gba80ba/amp-linux-arm64"
      sha256 "b0268091b149e131f0b3c2f820759f266c9376bb10747d37f48374401b0f42f1"
    else
      url "https://static.ampcode.com/cli/0.0.1792995770-gba80ba/amp-linux-x64"
      sha256 "5975b75814a77146a46b4265abafa01f8589af63e13fb07771f3845d23fb3a1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
