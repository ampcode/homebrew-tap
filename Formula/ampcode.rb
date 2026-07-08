class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783513690-g14314d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783513690-g14314d/amp-darwin-arm64"
      sha256 "eaae0854dcc5b5037f38f4b87f0f41b92775dc40a93382c4dd8e5979407cd00b"
    else
      url "https://static.ampcode.com/cli/0.0.1783513690-g14314d/amp-darwin-x64"
      sha256 "aeb4c3e120bad540dce3d9c73bf02973ed8224f6888dc0f2a57f9a6822efa231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783513690-g14314d/amp-linux-arm64"
      sha256 "6e13a60be183f95eedb1900327a49002c9d5b586762ae9798e876877cd4b956b"
    else
      url "https://static.ampcode.com/cli/0.0.1783513690-g14314d/amp-linux-x64"
      sha256 "52b687901c8627c283577fc13d4ed0fedb5e019804dbbf223919a2512f364827"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
