class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789810725-gc77cb3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789810725-gc77cb3/amp-darwin-arm64"
      sha256 "4cb46728ac863c389f226fb31be13a22cc86d0dbb130131aece1874418d135f4"
    else
      url "https://static.ampcode.com/cli/0.0.1789810725-gc77cb3/amp-darwin-x64"
      sha256 "c7be4d70ae4c26ce1e85b2a888e8b554f36d08a5ca4c623dc2fbf4f9f8eb7c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789810725-gc77cb3/amp-linux-arm64"
      sha256 "bb3f14f07b43ab63f1f1ad0521a2dfa881e57aa4d4653366a790e70ddcef4d62"
    else
      url "https://static.ampcode.com/cli/0.0.1789810725-gc77cb3/amp-linux-x64"
      sha256 "ab3f490f5f7f57d30d945a749a2318163f88d0fa52db91d09f72e9f460ad0f55"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
