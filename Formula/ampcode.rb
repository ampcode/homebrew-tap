class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785919970-g9e90bb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785919970-g9e90bb/amp-darwin-arm64"
      sha256 "17bd48287672b7aff113eed9d6eb55ed790285808a03ae54d4199c0d53eff0fc"
    else
      url "https://static.ampcode.com/cli/0.0.1785919970-g9e90bb/amp-darwin-x64"
      sha256 "d4042eaa7ac021d5176a7e3504c3b4458400608da6d75cf416d190314dcaf0ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785919970-g9e90bb/amp-linux-arm64"
      sha256 "2e0abf581789e40342980d21d501806d2d6f9f6db9f561ec63266fd9248ca46b"
    else
      url "https://static.ampcode.com/cli/0.0.1785919970-g9e90bb/amp-linux-x64"
      sha256 "2aa87a93bef0e0f436097ba7ebfa0033bb2a26c3f9f9d9d58a9acfcb9eb08ff2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
