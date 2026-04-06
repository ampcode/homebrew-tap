class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775463997-ga80857"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775463997-ga80857/amp-darwin-arm64"
      sha256 "4d27c6f9687fe4006fa2ed1b407e4066092e50722bdc6eefb2c6b76bd9ba1b85"
    else
      url "https://static.ampcode.com/cli/0.0.1775463997-ga80857/amp-darwin-x64"
      sha256 "514b53ec37bb4bb549285d006aafa36d099d87c730f69a6cbe8915448eee942b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775463997-ga80857/amp-linux-arm64"
      sha256 "deabcdcd698554f6cfe4971914c45e58449425e21cbcfd2004997bde191eefdd"
    else
      url "https://static.ampcode.com/cli/0.0.1775463997-ga80857/amp-linux-x64"
      sha256 "f12f954c8111b84557a78e0ffe217b55b266a011377eaeba01b9fefbfd2d927c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
