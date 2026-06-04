class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780611202-g48bcc4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780611202-g48bcc4/amp-darwin-arm64"
      sha256 "6cd1a3ff86faf6ada1347d175242a80900b8f993917bd4b4817b29d67d06fa53"
    else
      url "https://static.ampcode.com/cli/0.0.1780611202-g48bcc4/amp-darwin-x64"
      sha256 "458caf94ac7bbd8fcfa313b2db010bfe37f5f809b86867e76db2bacde50ac07d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780611202-g48bcc4/amp-linux-arm64"
      sha256 "0cacfecdf38dcbfbb14caa8a04e9fe0b89fd2e82324eee0690eb360e52a98713"
    else
      url "https://static.ampcode.com/cli/0.0.1780611202-g48bcc4/amp-linux-x64"
      sha256 "6e776b6d516dc913747977494a9855b51bf50455ceacba55a8a4a01dd1153069"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
