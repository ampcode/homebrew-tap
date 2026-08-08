class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786205170-g724a7d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786205170-g724a7d/amp-darwin-arm64"
      sha256 "a6131c173c9154898aa6c70629da75ada75529ec9e69dd664520ac4b2f309809"
    else
      url "https://static.ampcode.com/cli/0.0.1786205170-g724a7d/amp-darwin-x64"
      sha256 "3af6bfb1d24dcd367f8bf11ffbd46e8354f2b7443c6f2876b0d1ac08a404d706"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786205170-g724a7d/amp-linux-arm64"
      sha256 "b5a8c79409b310a642b136989f20319ab2ec2c292730c686a184bf065036de11"
    else
      url "https://static.ampcode.com/cli/0.0.1786205170-g724a7d/amp-linux-x64"
      sha256 "84aeefcc2480de6b24272210322aa86ca21ca41f0325eedbe58e62e81d2da4b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
