class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783486870-gfc5c81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783486870-gfc5c81/amp-darwin-arm64"
      sha256 "5a1fca8b0ebd9e7f8bef8db9602834a67cb507fe077900101733ddbf958e8b73"
    else
      url "https://static.ampcode.com/cli/0.0.1783486870-gfc5c81/amp-darwin-x64"
      sha256 "4a0b315b55ecf6c8ee13132cefce81b5dc8458cccc286bf11c6ca01ed353623c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783486870-gfc5c81/amp-linux-arm64"
      sha256 "4426ca89ce879a2f4980668c0739421d4dc221d88b441fa1233f944e583d4996"
    else
      url "https://static.ampcode.com/cli/0.0.1783486870-gfc5c81/amp-linux-x64"
      sha256 "a5c40f281efcfcdfb5bfcf8d254eb6bd009c657484d90f6fd968572acae1e524"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
