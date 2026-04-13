class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776082522-ge195fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776082522-ge195fc/amp-darwin-arm64"
      sha256 "11b67ce24d87caad0093468196b636c33948506eac87f67b822bc40797c30112"
    else
      url "https://static.ampcode.com/cli/0.0.1776082522-ge195fc/amp-darwin-x64"
      sha256 "d62dc7efed82ce0feb661f7189139840b06d8e1ec281ceef276e726b605bb990"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776082522-ge195fc/amp-linux-arm64"
      sha256 "434973d1cb9f38cf8c5c4f670417280f471304bea91b949f49d3733b797048e0"
    else
      url "https://static.ampcode.com/cli/0.0.1776082522-ge195fc/amp-linux-x64"
      sha256 "3ad43e4f37ed33eef78ee64efe54d57026c3eca3418729411bbbfcc530a7f9ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
