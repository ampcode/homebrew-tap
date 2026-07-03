class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783055713-g2ddb9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783055713-g2ddb9a/amp-darwin-arm64"
      sha256 "7a23a33fa985564edce7ad8b18e4a3faa73b32c9f2421e0998653f81cb26f916"
    else
      url "https://static.ampcode.com/cli/0.0.1783055713-g2ddb9a/amp-darwin-x64"
      sha256 "4f4430bc23f5451237158a4e7a4cdff85604f05e121dda9bf390cee164e90a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783055713-g2ddb9a/amp-linux-arm64"
      sha256 "1a64d76c9643f7418fbd5bcf7d2c62c8942dd4664de39d7483a1f35b969bde02"
    else
      url "https://static.ampcode.com/cli/0.0.1783055713-g2ddb9a/amp-linux-x64"
      sha256 "141dbebf18ca011b56036dd8d64f269478749bbae9cda9f2f152e70aa133c835"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
