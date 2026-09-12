class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789238012-gc45743"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789238012-gc45743/amp-darwin-arm64"
      sha256 "54b684807d66c373112ea39b307e5472d680b44256b30f52ead3e59d3bb87077"
    else
      url "https://static.ampcode.com/cli/0.0.1789238012-gc45743/amp-darwin-x64"
      sha256 "74992e1b3ca3a6d26d9d951f9c6f769f84e2d2f30663a0193b9299390e3b3cb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789238012-gc45743/amp-linux-arm64"
      sha256 "2dbc1c5620c20baa8f7982de46746969fe36d9de071001c5e646407196b57d6b"
    else
      url "https://static.ampcode.com/cli/0.0.1789238012-gc45743/amp-linux-x64"
      sha256 "4ca38839289b5c6ebeb14dffa44f2f8fb424cacc23e7635a151458a3ac4bc850"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
