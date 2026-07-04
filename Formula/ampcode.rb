class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783155105-g3e26cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783155105-g3e26cc/amp-darwin-arm64"
      sha256 "6269381f787e77ef752d563dce914be7ea0da9565a099b23735a4fbe4b93ef0c"
    else
      url "https://static.ampcode.com/cli/0.0.1783155105-g3e26cc/amp-darwin-x64"
      sha256 "2c01ab99943736d459e402d96b806c49d2819fd6981c7be73bf0df1dc1ea5276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783155105-g3e26cc/amp-linux-arm64"
      sha256 "30ca0d7154b735a702fedc47d087562fbc0eb7d715484e94ee1ef877e1d8eb90"
    else
      url "https://static.ampcode.com/cli/0.0.1783155105-g3e26cc/amp-linux-x64"
      sha256 "a27f52cc9f6459fc5c94ffdb442461d2bf5344631962a518001d1cb88a536f96"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
