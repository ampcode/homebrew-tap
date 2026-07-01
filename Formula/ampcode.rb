class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782910222-g629a79"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782910222-g629a79/amp-darwin-arm64"
      sha256 "599d78a49335a78ca49d0da5adae726cf9585ae55d58e465e918423d04ac65ff"
    else
      url "https://static.ampcode.com/cli/0.0.1782910222-g629a79/amp-darwin-x64"
      sha256 "ea9470992ea0ee204dea66b35a48ff160f56603ad78943014164154e29537344"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782910222-g629a79/amp-linux-arm64"
      sha256 "c86d639225a816a5b8660ad22415f56fa183eaa55fd972bcd65eee14e1f70c95"
    else
      url "https://static.ampcode.com/cli/0.0.1782910222-g629a79/amp-linux-x64"
      sha256 "eb9f87d6a4396a840dfa41aeab441e199e0cbd91972322fcd514fbe32f75bb6e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
