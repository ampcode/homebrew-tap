class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774544564-gebeb29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774544564-gebeb29/amp-darwin-arm64"
      sha256 "abd349fdb4627e77cd04e97d0f6de7421c2ddf6c0fe8dfc358aa7c00e6b1f774"
    else
      url "https://static.ampcode.com/cli/0.0.1774544564-gebeb29/amp-darwin-x64"
      sha256 "a9cef7b6c0a72e6065c06a63ef74729e8d52e1da95e4a4ef31bac8be50324399"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774544564-gebeb29/amp-linux-arm64"
      sha256 "4ab08ab489361821d76ebc4dd4700d70c89248455c91d8409671cf57718d3673"
    else
      url "https://static.ampcode.com/cli/0.0.1774544564-gebeb29/amp-linux-x64"
      sha256 "2b68bf7580f0b2ca9ab7da6400d95bc59bbd7991669f846cce33e285d6da5cef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
