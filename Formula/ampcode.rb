class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780244579-g6b52f9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780244579-g6b52f9/amp-darwin-arm64"
      sha256 "a090fe7e01d8172d6669d48abfc6ac6364abe3b6d340ded8f6377d6ec42bdfca"
    else
      url "https://static.ampcode.com/cli/0.0.1780244579-g6b52f9/amp-darwin-x64"
      sha256 "411dfc028fab257412f577c857bac6f6464a3f141b4a87d31f10b612abb2a570"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780244579-g6b52f9/amp-linux-arm64"
      sha256 "a38af987a130766460bf786f8b88b9968b3ebaf9c2c8e370d6f6d8f72e4ba925"
    else
      url "https://static.ampcode.com/cli/0.0.1780244579-g6b52f9/amp-linux-x64"
      sha256 "a57b1bf39be203466ec62f07bd395b2c8eb86978403d4fc680479a589c4d06f5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
