class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783370591-gf8d296"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783370591-gf8d296/amp-darwin-arm64"
      sha256 "0f8787a07523ace6d85845268534e6ff715e32960ec77785fb7c66e532aa810d"
    else
      url "https://static.ampcode.com/cli/0.0.1783370591-gf8d296/amp-darwin-x64"
      sha256 "9692162ee71063eb9a83f1ffcf72c90c340c9bac2a186accc09dbb967a3c36c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783370591-gf8d296/amp-linux-arm64"
      sha256 "32c3ce6fbad7c94eb25201b42e56b76e9ffb567cea0c5ac308e2d4c35e0fea88"
    else
      url "https://static.ampcode.com/cli/0.0.1783370591-gf8d296/amp-linux-x64"
      sha256 "9a7177547ee5bad9dd7e968d243471519bc6174c1592b582255a9f8d33a95f03"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
