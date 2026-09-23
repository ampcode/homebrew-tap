class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790152370-gb14497"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790152370-gb14497/amp-darwin-arm64"
      sha256 "17ae4285861f13a2263bc271167c88ef5074e0af6e71d6c283bed199ed08d503"
    else
      url "https://static.ampcode.com/cli/0.0.1790152370-gb14497/amp-darwin-x64"
      sha256 "3f6501948a7016859410be55ae8cd85e71ef290f091bc5e74461013007a8e4cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790152370-gb14497/amp-linux-arm64"
      sha256 "3086c29fd3f56f791c6631d6937c54c9e7efbd6ea5c141027151f79af9f19d7c"
    else
      url "https://static.ampcode.com/cli/0.0.1790152370-gb14497/amp-linux-x64"
      sha256 "ef4caa4cc8e3cdcc5c07f20243b22bf6914ee715761426f4088982a5a87455d9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
