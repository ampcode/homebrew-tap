class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783682605-g54b194"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783682605-g54b194/amp-darwin-arm64"
      sha256 "2ef60a74069eb688996f434b3756672281c283077790b9c549f298a9b4bcc72a"
    else
      url "https://static.ampcode.com/cli/0.0.1783682605-g54b194/amp-darwin-x64"
      sha256 "921752468daf21e6d9e06b97cce5aa4d467e0af4d79533ba37f9d073e8d240e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783682605-g54b194/amp-linux-arm64"
      sha256 "837433457fa24ca867c2396f24fcf85acb533cfa9178fa0282325281304189ae"
    else
      url "https://static.ampcode.com/cli/0.0.1783682605-g54b194/amp-linux-x64"
      sha256 "9706a3ca58d02acddbbd938183c904fe4839f2530e1121650e2b5e1936b480b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
