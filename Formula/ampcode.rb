class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784623840-g17937f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784623840-g17937f/amp-darwin-arm64"
      sha256 "ac5ead7f6368197834fb87c02800e99066513920b0ce9755cb35251ea6b1c4ec"
    else
      url "https://static.ampcode.com/cli/0.0.1784623840-g17937f/amp-darwin-x64"
      sha256 "5ee1da483d094670d0b3b8143cd20072792276d26585bfe68a7d2b419ec39ac4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784623840-g17937f/amp-linux-arm64"
      sha256 "152fc4cb7d057ff90811e94a101d5a70d260ce13e669b4a723ea27bad3385313"
    else
      url "https://static.ampcode.com/cli/0.0.1784623840-g17937f/amp-linux-x64"
      sha256 "e2954569655248ab1daebe9ddce1710f7dde146015376695acbfae6cd71f9ed0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
