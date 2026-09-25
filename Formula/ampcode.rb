class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790366488-gdd50cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790366488-gdd50cc/amp-darwin-arm64"
      sha256 "8fe1d014da7cf772fe42177093339e5c23e3eb6cd768aa1951bd24eee333c35b"
    else
      url "https://static.ampcode.com/cli/0.0.1790366488-gdd50cc/amp-darwin-x64"
      sha256 "b2577b64da488c42f8f36325ea1ef8f755269303795a1a08490f074743e58879"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790366488-gdd50cc/amp-linux-arm64"
      sha256 "74f261e8d4f67b68be9516094e5d1dc1c71b48ab11cc9ac40049ac67a6e64f31"
    else
      url "https://static.ampcode.com/cli/0.0.1790366488-gdd50cc/amp-linux-x64"
      sha256 "78dd45b4746899c70c9413091225c7a081fd32ce1f43bebb53456ea06ce3c922"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
